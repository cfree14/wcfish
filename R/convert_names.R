
#' Convert common names to common format
#'
#' This function converts fish common names to a common format: regular ("Dungeness crab") or reverse ("Crab, Dungeness").
#'
#' @param names Common names
#' @param to Format to convert to: regular ("Dungeness crab") or reverse ("Crab, Dungeness")
#' @return Converted common names
#' @examples
#' # Convert common name
#' convert_names(names=c("California spiny lobster", "Halibut, Pacific", "Hake", "Warty sea cucumber"), to="reverse")
#' convert_names(names=c("Lobster, California spiny", "Pacific halibut", "Hake", "Crab, rock", "Sea cucumber, warty"), to="regular")
#' @export
convert_names <- function(names, to){

  # Vectorize
  y <- purrr::map_chr(names, function(x){

    # Parameters
    comma <- grepl(",", x)
    nwords <- strsplit(x, split=" ") %>% unlist(.) %>% length(.)


    # If just one word
    if(nwords==1){

      out_name <- x

    # If more than one word
    }else{

      # If regular
      if(to=="regular"){

        # If comma...
        if(comma==T){
          out_name <- wcfish::reverse_names(x)
        }
        # If no comma...
        if(comma==F){
          out_name <- x
        }

      # If reverse
      }else{

        # If comma...
        if(comma==T){
          out_name <- x
        }
        # If no comma...
        if(comma==F){
          out_name <- wcfish::reverse_names(x)
        }

      }

    }

    # Return
    out_name

  })

  # Return
  return(y)

}
