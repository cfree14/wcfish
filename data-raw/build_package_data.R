

# Notes
# https://r-pkgs.org/data.html

# Packages
library(tidyverse)

# Read data
spp_key <- read.csv("data-raw/california_species_key.csv", as.is=T) %>%
  arrange(type, comm_name) %>%
  unique()

# Save data for internal use (users can't see)
usethis::use_data(spp_key, internal = TRUE, overwrite = T)
