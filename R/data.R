
#' West Coast fisheries species information
#'
#' Taxonomic information for West Coast fisheries species.
#'
#' @format A data frame with the following attributes::
#' \describe{
#'   \item{comm_name}{Common name}
#'   \item{scientific_name}{Scientific name}
#'   \item{type}{Type (e.g., fish, crustacean, mollusk, other invertebrate)}
#'   \item{taxa_group}{Taxonomic group}
#'   \item{phylum}{Phylum}
#'   \item{class}{Class}
#'   \item{order}{Order}
#'   \item{family}{Family}
#'   \item{genus}{Genus}
#' }
"taxa"

#' California's commercial fishing ports
#'
#' Identity and location of California's commercial fishing ports.
#'
#' @format A data frame with the following attributes::
#' \describe{
#'   \item{state}{State}
#'   \item{port_complex_orig}{Port complex(s) used in the original data}
#'   \item{port_complex1}{Port complex, 1987-2019 typologogy}
#'   \item{port_complex2}{Port complex, 1936-1986 typologogy}
#'   \item{port_complex3}{Port complex, 1931-1935 typologogy}
#'   \item{port_complex4}{Port complex, 1926-1930 typologogy}
#'   \item{county}{County}
#'   \item{port}{Port name}
#'   \item{type}{Individual port or group of ports}
#'   \item{lat_dd}{Latitude (°N)}
#'   \item{long_dd}{Longitude (°W)}
#' }
"ports"

#' West Coast commercial fishing blocks
#'
#' An 'sf' object (similar to a shapefile) mapping the West Coast's commercial fishing blocks.
#'
#' @format An 'sf' object data frame with 836 rows (blocks) and 7 variables (block attributes):
#' \describe{
#'   \item{block_state}{State}
#'   \item{block_type}{Type: inshore, midshore, or offshore}
#'   \item{block_id}{Block id}
#'   \item{block_sqkm}{Area (sq. km)}
#'   \item{block_lat_dd}{Latitude (°N) of centroid}
#'   \item{block_long_dd}{Longitude (°W) of centroid}
#' }
"blocks"

#' NOAA annual commercial fisheries landings by state and species
#'
#' Annual commercial fisheries landings (pounds/value) by U.S. state and species from 1950-2019 from NOAA's FOSS database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{region}{Region}
#'   \item{source}{Data source}
#'   \item{state}{State}
#'   \item{comm_name_orig}{Common name, as in original data}
#'   \item{sci_name_orig}{Scientific name, as in original data}
#'   \item{comm_name}{Common name, formatted}
#'   \item{level}{Taxonomic resolution (species-level or group-level)}
#'   \item{year}{Year (1950-2019)}
#'   \item{landings_lb}{Landings in pounds (lb)}
#'   \item{value_usd}{Landings in values ($US)}
#'   \item{confidentiality}{Confidentiality note}
#' }
"noaa"

#' PACFIN annual commercial fisheries landings by port complex and species
#'
#' Annual commercial fisheries landings (pounds/value) by port complex (CA/OR/WA) and species from 1980-2020 from the PACFIN database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{year}{Year}
#'   \item{state}{State}
#'   \item{......}{More coming soon}
#' }
"pacfin_all6"

#' CDFW annual commercial fisheries landings by waters and species
#'
#' Annual California commercial fisheries landings and shipments (pounds) by waters and species from 1936-2019.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{source}{Source of data}
#'   \item{table}{Table containing data in source}
#'   \item{year}{Year}
#'   \item{waters}{Waters (e.g., California, north-of-state, south-of-state, etc.)}
#'   \item{comm_name_orig}{Common name, as in original data}
#'   \item{comm_name}{Common name, harmonized across years and datasets}
#'   \item{sci_name}{Scientific name}
#'   \item{presentation}{Presentation (i.e., roe, roe on kelp, claws)}
#'   \item{landings_lb}{Landings in pounds}
#'   \item{landings_kg}{Landings in kilograms}
#' }
"cdfw_waters"

#' CDFW annual commercial fisheries landings by port and species
#'
#' Annual California commercial fisheries landings and shipments (pounds/values) by port and species from 1941-2019.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{source_type}{Fish Bulletin or CDFW website}
#'   \item{source}{Source of data}
#'   \item{table}{Table containing data in source}
#'   \item{port_complex}{Port complex, based on the most recept typology}
#'   \item{port_complex_orig}{Port complex, as in original data}
#'   \item{port}{Port name, harmonized across years}
#'   \item{port_orig}{Port name, as in original data}
#'   \item{type}{Landings or shipments}
#'   \item{year}{Year}
#'   \item{comm_name}{Common name, harmonized across years and datasets}
#'   \item{comm_name_orig}{Common name, as in original data}
#'   \item{sci_name}{Scientific name}
#'   \item{presentation}{Presentation (i.e., roe, roe on kelp, claws)}
#'   \item{value_used}{Ex-vessel value (US dollars)}
#'   \item{landings_lb}{Landings in pounds}
#'   \item{landings_kg}{Landings in kilograms}
#' }
"cdfw_ports"

#' CDFW annual number of licensed commercial fishers
#'
#' Annual number of licensed commercial fishers in California from 1916-2020 with information by area of residence from 1935-1976.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{...}{Descriptions coming soon}
#' }
"cdfw_n_comm_fishers"

#' CDFW annual number of registered commercial fishing vessels
#'
#' Annual number of registered commercial fishing vessels in California from 1934-2020.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{...}{Descriptions coming soon}
#' }
"cdfw_n_comm_vessels"

#' CDFW annual number of registered commercial fishing vessels by length class
#'
#' Annual number of registered commercial fishing vessels in California by length class from 1934-1956.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{...}{Descriptions coming soon}
#' }
"cdfw_n_comm_vessels_length"

#' CDFW annual number of registered commercial fishing vessels by port complex
#'
#' Annual number of registered commercial fishing vessels in California by port complex from 1934-1976.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{...}{Descriptions coming soon}
#' }
"cdfw_n_comm_vessels_port"

#' CDFW annual landings from Commercial Passenger Fishing Vessels
#'
#' Annual landings from Commercial Passenger Fishing Vessels (CPFVs) in California from 1936-2019.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{...}{Descriptions coming soon}
#' }
"cdfw_cpfv"

#' CDFW annual participation in and effort by Commercial Passenger Fishing Vessels
#'
#' Annual participation in and effort by from Commercial Passenger Fishing Vessels (CPFVs) in California from 1936-2019.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{...}{Descriptions coming soon}
#' }
"cdfw_cpfv_effort"
