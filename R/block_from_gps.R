
#' Extract CDFW block id from GPS coordinates
#'
#' This function extracts CDFW block ids from a list of GPS coordinates.
#'
#' @param lat_dd Latitude in decimal degrees
#' @param long_dd Longitude in decimal degrees
#' @return Block id
#' @examples
#' # Extract block ids
#' # The second to last coordinate is purposefully incomplete
#' # The last coordinate is purposefully outside the block area
#' lat_dd <- c(33.338592, 35.551473, 36.716016, NA, 36.716016)
#' long_dd <- c(-118.310696, -121.108906, -121.820242, -121.820242, -130)
#' block_from_gps(lat_dd=lat_dd, long_dd=long_dd)
#' @export
block_from_gps <- function(lat_dd, long_dd){

  # Get blocks
  blocks <- wcfish::blocks
  blocks_sp <- sf::as_Spatial(blocks)

  # Full GPS data frame
  df_full <- tibble(long_dd=long_dd,
               lat_dd)

  # Useful GPS data frame
  df_use <- df_full %>%
    # Reduce to records with both lat/long
    filter(!is.na(long_dd) & !is.na(lat_dd)) %>%
    unique()

  # GPS sp
  sp <- df_use %>%
    # Convert to sf then sp
    sf::st_as_sf(coords = c("long_dd", "lat_dd"), crs=sf::st_crs(blocks), remove = F) %>%
    sf::as_Spatial()

  # Extract blocks
  block_ids <- sp::over(sp, blocks_sp) %>%
    pull(block_id)
  df_use$block_id <- block_ids

  # Build complete data
  df_full1 <- df_full %>%
    left_join(df_use, by=c("long_dd", "lat_dd"))

  # Blocks out
  blocks_out <- df_full1$block_id

  # Return
  return(blocks_out)

}
