

# Notes
# https://r-pkgs.org/data.html

# Packages
library(readxl)
library(tidyverse)

# Read species key
spp_key_orig <- readxl::read_excel("data-raw/california_species_key.xlsx")


# Perform checks
########################################################################################

# Checks
# 1) Are all of the scientific names correct?
# 2) Does each scientific name have only one common name?
# 1 common name per scientific name
# 1 scientific name per common name

# 1) Check scientific names
# should only show: Cerithium californicum, Procambarus clarkii, Penaeus californiensis
spp_all <- sort(unique(spp_key_orig$scientific_name))
spp_check <- spp_all[!grepl("spp", spp_all) & !grepl(",", spp_all)]
freeR::suggest_names(spp_check)

# 2a) Do scientific names have only one official common name?
# should be zero rows
check2_spp <- spp_key_orig %>%
  filter(level1=="species") %>%
  group_by(scientific_name) %>%
  summarise(n_comm_names=n_distinct(comm_name),
            comm_names=paste(sort(unique(comm_name)), collapse=", ")) %>%
  filter(n_comm_names>1)

# 2b) Do scientific names have only one official common name?
# I'm okay with scientific names being used for multiple vague common names
check2_group <- spp_key_orig %>%
  filter(level1=="group") %>%
  group_by(scientific_name) %>%
  summarise(n_comm_names=n_distinct(comm_name),
            comm_names=paste(sort(unique(comm_name)), collapse=", ")) %>%
  filter(n_comm_names>1)

# 3a) Do official common names have only one scientific name?
# should be zero rows
check3_spp <- spp_key_orig %>%
  filter(level1=="species") %>%
  group_by(comm_name) %>%
  summarise(n_sci_names=n_distinct(scientific_name),
            sci_names=paste(sort(unique(scientific_name)), collapse=", ")) %>%
  filter(n_sci_names>1)

# 3b) Do official common names have only one scientific name?
# should be zero rows
check3_group <- spp_key_orig %>%
  filter(level1=="group") %>%
  group_by(comm_name) %>%
  summarise(n_sci_names=n_distinct(scientific_name),
            sci_names=paste(sort(unique(scientific_name)), collapse=", ")) %>%
  filter(n_sci_names>1)

# 3c) Do official common names have only one scientific name?
# should be zero rows
check3_all <- spp_key_orig %>%
  group_by(comm_name) %>%
  summarise(n_sci_names=n_distinct(scientific_name),
            sci_names=paste(sort(unique(scientific_name)), collapse=", ")) %>%
  filter(n_sci_names>1)

# Build species key
if(F){

  # Build spp key
  taxa_key <- spp_key_orig %>%
    select(type, comm_name, scientific_name) %>%
    unique()

  # Get taxa info
  taxa_info <- freeR::taxa(species=taxa_key$scientific_name)

  # Add
  taxa_key1 <- taxa_key %>%
    left_join(taxa_info %>% select(-c(type, species)), by=c("scientific_name"="sciname"))

  # Export
  write.csv(taxa_key1, file="data-raw/california_species_taxonomic_info_key.csv", row.names = F)

}


# Export data
########################################################################################

# Format data
spp_key <- spp_key_orig %>%
  arrange(type, comm_name)

# Save data for internal use (users can't see)
usethis::use_data(spp_key, internal = TRUE, overwrite = T)
