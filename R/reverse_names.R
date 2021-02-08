
#' Reverse common names
#'
#' This function reverses fish common name. For example, it changes "Halibut, Pacific" to "Pacific halibut" and vice versa.
#'
#' @param x Common name
#' @return Reversed common name
#' @examples
#' # Reverse common name
#' reverse_names(names=c("California spiny lobster", "Pacific halibut", "Hake", "Warty sea cucumber"))
#' reverse_names(names=c("Lobster, California spiny", "Halibut, Pacific", "Hake", "Crab, rock", "Sea cucumber, warty"))
#' @export
reverse_names <- function(names){

  # Vectorize
  y <- purrr::map_chr(names, function(x){

    # Comma?
    comma <- grepl(",", x)
    nwords <- strsplit(x, split=" ") %>% unlist(.) %>% length(.)

    # If more than one word
    if(nwords>1){

      # If comma...
      if(comma==T){

        # Break string by commas
        name_list <- strsplit(x, split=", ") %>% unlist()
        last_phrase <- name_list[length(name_list)] %>% stringr::str_to_sentence()
        first_phrase <- paste(name_list[1:(length(name_list)-1)], collapse=" ") %>% tolower()
        out_name <- paste(last_phrase, first_phrase)

        # # Get last word
        # last_word <- stringr::word(x, 1) %>% gsub(",", "", .) %>% tolower()
        # # Get rest of words
        # rest_of_words <- stringr::word(x, start=2, end=nwords) %>% stringr::str_to_sentence()
        # # Merge
        # out_name <- paste(rest_of_words, last_word)
      }

      # If no comma...
      if(comma==F){
        # Get last word
        last_word <- stringr::word(x, -1) %>% stringr::str_to_title(.)
        # Get rest of words
        rest_of_words <- stringr::word(x, start=1, end=nwords-1)
        # Merge
        out_name <- paste0(last_word, ", ", rest_of_words)
      }

    }else{

      out_name <- x

    }

    # Return
    out_name

  })

  # Return
  return(y)

}
