
#' Harmonize scientific and common names for West Coast fish species
#'
#' This function harmonizes the scientific and common names for West Coast fish species.
#'
#' @param x A character vector of species common names
#' @param from Type of data being harmonized
#' @param to Type of data to return
#' @return A character vector of harmonized names
#' @examples
#' # Suggest spelling corrections for common names
#' harmonize_names(x=c("Pacific hake", "Northern halibut"), from="comm", to="comm")
#' harmonize_names(x=c("Dungeness crab", "Northern anchovy"), from="comm", to="sci")
#' harmonize_names(x=c("Metacarcinus magister", "Engraulis mordax"), from="sci", to="comm")
#' @export
harmonize_names <- function(x, from, to){

  # If common name to scientific name.....
  if(from=="comm" & to=="sci"){

    # Build key
    spp_key_use <- spp_key %>%
      select(comm_name, scientific_name) %>%
      unique()

    # Build output
    out <- data.frame(comm_name=x) %>%
      # Add scientific name
      left_join(spp_key_use) %>%
      pull(scientific_name)

  }

  # If scientific name to common name.....
  if(from=="sci" & to=="comm"){

    # Build key
    spp_key_use <- spp_key %>%
      select(comm_name, scientific_name) %>%
      unique()

    # Build output
    out <- data.frame(scientific_name=x) %>%
      # Add common name
      left_join(spp_key_use) %>%
      pull(comm_name)

  }

  # If common name to common name.....
  if(from=="comm" & to=="comm"){

    # Build key
    spp_key_use <- spp_key %>%
      select(comm_name_orig, comm_name) %>%
      unique()

    # Build output
    out <- data.frame(comm_name_orig=x) %>%
      # Add common name
      left_join(spp_key_use) %>%
      pull(comm_name)

  }

  # Return
  return(out)

}
