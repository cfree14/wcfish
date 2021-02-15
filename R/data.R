
#' California's commercial fishing ports
#'
#' Identity and location of California's commercial fishing ports.
#'
#' @format A data frame with 143 rows (ports) and 11 variables (port attributes):
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
#'   \item{year}{Year}
#'   \item{state}{State}
#'   \item{......}{More coming soon}
#' }
"cdfw_waters"
