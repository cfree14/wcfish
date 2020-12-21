
#' Check spelling of common names for West Coast fish species
#'
#' This function checks the spelling of common names for West Coast fish species. It aims to help harmonize datasets based on common names.
#'
#' @param names A character vector of species common names
#' @return A data frame showing suggestions for misspelled common names
#' @examples
#' # Suggest spelling corrections for common names
#' check_names(names=c("Pacific codd", "CA spiny lobster", "Dungeness crab"))
#' @export
check_names <- function(names){

  # Identify unique species
  spp_vec <- sort(unique(names))

  # Which names are not correct?
  spp_vec_bad <- spp_vec[!spp_vec %in% spp_key$comm_name]

  # Identify correct names
  spp_vec_good <- sapply(spp_vec_bad, function(x) spp_key$comm_name[agrep(x, spp_key$comm_name)][1])

  # Identify the best alternatives
  key <- data.frame(comm_name_orig=spp_vec_bad,
                    comm_name=spp_vec_good, row.names = NULL)

  # Return
  return(key)

}
