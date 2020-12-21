
#' Check spelling of common names for West Coast fish species
#'
#' This function checks the spelling of common names for West Coast fish species. It aims to help harmonize datasets based on common names.
#'
#' @param names A character vector of species common names
#' @param return 1 returns a list formatted for recoding and 2 returns a data frame
#' @return A list or data frame showing suggestions for misspelled common names
#' @examples
#' # Suggest spelling corrections for common names
#' check_names(names=c("Pacific codd", "CA spiny lobster", "Dungeness crab"), return=2)
#' @export
check_names <- function(names, return=1){

  # Identify unique species
  spp_vec <- sort(unique(names))

  # Which names are not correct?
  spp_vec_bad <- spp_vec[!spp_vec %in% spp_key$comm_name]

  # Identify correct names
  spp_vec_good <- sapply(spp_vec_bad, function(x) spp_key$comm_name[agrep(x, spp_key$comm_name)][1])

  # Identify the best alternatives
  key <- data.frame(comm_name_orig=spp_vec_bad,
                    comm_name=spp_vec_good, row.names = NULL) %>%
    dplyr::mutate(recode_text=paste0("'", comm_name_orig, "'='", comm_name, "'"))

  # If return 1
  if(return==1){
    key <- paste(key$recode_text, collapse=", ")
  }

  # Return
  return(key)

}
