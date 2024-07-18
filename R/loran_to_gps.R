
#' Convert Loran-C coordinates to GPS coordinates
#'
#' This function converts Loran-C coordinates to GPS coordinates by using a ghost browser to run this NOAA conversion tool: https://apps-nefsc.fisheries.noaa.gov/loran/public/
#'
#' The chain must be one of the following 4-digit numbers: 5930 (Canadian E. Coast), 5990 (Canadian W. Coast), 7270 (Newfoundland E. Coast), 7960 (Gulf of Alaska), 7980 (Southeast U.S.), 8290 (N. Central U.S.), 8970 (Great Lakes), 9610 (S. Central U.S.), 9940 (Western U.S.), 9960 (Northeast U.S.), 9990 (N. Pacific).
#'
#' @param chain Chain
#' @param loran_x Loran-C x value
#' @param loran_w Loran-C w value
#' @return Data frame of GPS values
#' @export
#' @examples
#' # Convert Loran coordinates
#' # The second to last value is purposefully invalid
#' loran_x <- c(27138, 27142, 27144, 27144)
#' loran_w <- c(15338, 14327, 153366, 15336)
#' loran_to_gps(chain=9940, loran_x=loran_x, loran_w=loran_w)
loran_to_gps <- function(chain, loran_x, loran_w){

  # Check chain
  # 5930 Canadian E. Coast
  # 5990 Canadian W. Coast
  # 7270 Newfoundland E. Coast
  # 7960 Gulf of Alaska
  # 7980 Southeast U.S.
  # 8290 N. Central U.S.
  # 8970 Great Lakes
  # 9610 S. Central U.S.
  # 9940 Western U.S.
  # 9960 Northeast U.S.
  # 9990 N. Pacific
  chains <- c(5930, 5990, 7270, 7960, 7980, 8290, 8970, 9610, 9940, 9960, 9990)
  if(!chain %in% chains){
    stop("The provided chain must be one of the following: 5930, 5990, 7270, 7960, 7980, 8290, 8970, 9610, 9940, 9960, 9990.")
  }

  # Check that loran x/w are same length
  if(length(loran_x) != length(loran_w)){
    stop("The vectors of LORAN-C x and w values must be the same length.")
  }

  # Firefox profile
  fprof <- RSelenium::makeFirefoxProfile(list(
    # detail level for download (0 = Desktop, 1 = systems default downloads location, 2 = custom folder.)
    browser.download.folderList = 2L,
    # stores a comma-separated list of MIME types to save to disk without asking what to use to open the file
    browser.helperApps.neverAsk.saveToDisk = "application/pdf",
    # disable PDF javascript so that PDFs are not displayed
    pdfjs.disabled = TRUE,
    # turn off scan and loading of any additionally added plug-ins
    plugin.scan.plid.all = FALSE,
    # high number defined for version of Adobe Acrobat
    plugin.scan.Acrobat = "99.0"))

  # Launch RSelenium server and driver
  rD <- RSelenium::rsDriver(browser="firefox",
                            # set which version of browser
                            version = "latest",
                            # Chrome version (turn off as Firefox will be used)
                            chromever = NULL,
                            # set which version of Gecko to use
                            geckover = "latest",
                            # status messages
                            verbose = TRUE,
                            # populate with the Firefox profile
                            extraCapabilities = fprof)
  remDr <- rD[["client"]]
  remDr$open(silent=T)

  # Base URL
  base_url <- "https://apps-nefsc.fisheries.noaa.gov/loran/public/"

  # Go to page
  remDr$navigate(base_url)

  # Select chain
  regionSelect <- remDr$findElement(using = "id", value = "gri")
  regionSelect$sendKeysToElement(list(as.character(chain)))

  # Select format: D.d, DM., DMS
  formatSelect <- remDr$findElement(using = "id", value = "llformat")
  formatSelect$sendKeysToElement(list("D.d"))

  # Function to loop through coordinates
  lookup_coords <- function(chain, loran_x, loran_w, pause=0.7){
    # x <- 1
    data <- purrr::map_df(1:length(loran_x), function(x) {

      # Loran values
      lor1 <- loran_x[x] %>% as.character()
      lor2 <- loran_w[x] %>% as.character()

      # Enter Loran 1 value
      loran1prompt <- remDr$findElement(using = "id", value = "td1_begin")
      loran1prompt$clearElement()
      loran1prompt$sendKeysToElement(list(lor1))

      # Enter Loran 2 value
      loran2prompt <- remDr$findElement(using = "id", value = "td2_begin")
      loran2prompt$clearElement()
      loran2prompt$sendKeysToElement(list(lor2))

      # Press the submit button
      submitButton <- remDr$findElement(using = "css selector", value = "input.usa-button.text-center.radius-md")
      submitButton$clickElement()
      Sys.sleep(pause)

      # Extract latitude
      latElem <- remDr$findElement(using = "id", value = "lat1_begin")
      latValue <- latElem$getElementAttribute("aria-label")
      north_yn <- grepl(" N$", latValue[[1]])
      lat_dd <- gsub("Begin haul lattitude is | N", "", latValue[[1]]) %>% as.numeric()
      if(north_yn==F){lat_dd <- lat_dd * -1}

      # Extract longitude
      longElem <- remDr$findElement(using = "id", value = "lon1_begin")
      longValue <- longElem$getElementAttribute("aria-label")
      west_yn <- grepl(" W$", longValue[[1]])
      long_dd <- gsub("Begin haul longitude is | W", "", longValue[[1]]) %>% as.numeric()
      if(west_yn==T){long_dd <- long_dd * -1}

      # Invalid flag
      errorElem <- remDr$findElement(using = "id", value = "formError")
      error <- errorElem$getElementText()[[1]]

      # Invalid?
      invalid_yn=ifelse(error=="", NA, "yes")

      # Merge
      df <- tibble(loran_x=lor1,
                   loran_w=lor2,
                   lat_dd=lat_dd,
                   long_dd=long_dd,
                   invalid_yn=invalid_yn)

    })

  }

  # Initial attempt
  data1 <- lookup_coords(chain, loran_x, loran_w)

  # Add id
  data1$id <- 1:nrow(data1)

  # Did any fail to record
  missing <- data1 %>%
    filter(is.na(lat_dd) & (is.na(lat_dd) | is.na(long_dd)))

  # Re-do for missing but with longer pause
  if(nrow(missing)>0){
    data2 <- lookup_coords(chain=chain, loran_x=missing$loran_x, loran_w=missing$loran_w, pause=1.5)
  }

  # Merge
  if(nrow(missing)>0){
    data_out <- bind_rows(data1 %>% filter(!id %in% missing$id), missing) %>%
      arrange(id) %>%
      select(-id)
  }else{
    data_out <- data1
  }

  # Close the browser
  remDr$close()

  # Stop the Selenium server
  rD[["server"]]$stop()

  # Return data
  return(data_out)

}
