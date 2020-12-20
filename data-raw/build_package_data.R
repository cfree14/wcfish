

# Notes
# https://r-pkgs.org/data.html

# Read data
spp_key <- read.csv("data-raw/california_species_key.csv", as.is=T)

# Save data for internal use (users can't see)
usethis::use_data(spp_key, internal = TRUE, overwrite = T)
