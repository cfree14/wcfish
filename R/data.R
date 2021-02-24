
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

#' West Coast commercial fishing ports
#'
#' Identity and location of the West Coast's commercial fishing ports.
#'
#' @format A data frame with the following attributes::
#' \describe{
#'   \item{state}{State}
#'   \item{port_complex_orig}{Port complex, in original data}
#'   \item{port_complex1}{Port complex, 1987-2019 typologogy}
#'   \item{port_complex2}{Port complex, 1936-1986 typologogy}
#'   \item{port_complex3}{Port complex, 1931-1935 typologogy}
#'   \item{port_complex4}{Port complex, 1926-1930 typologogy}
#'   \item{county}{County}
#'   \item{port}{Port name}
#'   \item{type}{Port type (individual port or composite of ports)}
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
#'   \item{block_state}{Block state (California, Oregon, or Washington)}
#'   \item{block_type}{Block type (inshore, midshore, offshore)}
#'   \item{block_id}{Block id}
#'   \item{block_sqkm}{Block area (sq. km)}
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
#'   \item{source}{Source (Fish Bulletin or CDFW report)}
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
#'   \item{source}{Source (Fish Bulletin or CDFW report)}
#'   \item{table}{Table number (e.g., Table 4, Table 5, etc.)}
#'   \item{port_complex}{Port complex, 1987-2019 typology}
#'   \item{port_complex_orig}{Port complex, as in the original data}
#'   \item{port}{Port name, harmonized across year and datasets}
#'   \item{port_orig}{Port name, as in the original data}
#'   \item{type}{Landings or shipments}
#'   \item{year}{Year}
#'   \item{comm_name}{Species common name, harmonized across years and datasets}
#'   \item{comm_name_orig}{Species common name, as in the original data}
#'   \item{sci_name}{Species scientific name}
#'   \item{presentation}{Presentation (a.k.a., condition) of the landings (i.e., roe, roe on kelp, claws, not specified)}
#'   \item{value_used}{Landings/shipments in value (USD)}
#'   \item{landings_lb}{Landings/shipments in pounds (lb)}
#'   \item{landings_kg}{Landings/shipments in kilograms (kg)}
#' }
"cdfw_ports"

#' CDFW annual number of licensed commercial fishers
#'
#' Annual number of licensed commercial fishers in California from 1916-2020 with information by area of residence from 1935-1976.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{source}{Source (Fish Bulletin or CDFW report)}
#'   \item{table}{Table number (e.g., Table 4, Table 5, etc.)}
#'   \item{season}{License year, April 1st to March 31st}
#'   \item{year}{Year}
#'   \item{region_type}{Scale of regional information (statewide or area-of-residence)}
#'   \item{region_group}{Region group (other categories grouped together)}
#'   \item{region}{Region (statewide or name or port complex)}
#'   \item{nfishers}{Total number of licensed commercial fishers}
#'   \item{nfishers_nr}{Number of non-resident licensed commercial fishers}
#'   \item{nfishers_r}{Number of resident licensed commercial fishers}
#' }
"cdfw_n_comm_fishers"

#' CDFW annual number of registered commercial fishing vessels
#'
#' Annual number of registered commercial fishing vessels in California from 1934-2020.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{source}{Source (Fish Bulletin or CDFW report)}
#'   \item{table}{Table number (e.g., Table 4, Table 5, etc.)}
#'   \item{season}{License year, April 1st to March 31st}
#'   \item{year}{Year}
#'   \item{nvessels}{Number of registered commercial fishing vessels}
#' }
"cdfw_n_comm_vessels"

#' CDFW annual number of registered commercial fishing vessels by length class
#'
#' Annual number of registered commercial fishing vessels in California by length class from 1934-1956.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{source}{Source (Fish Bulletin or CDFW report)}
#'   \item{table}{Table number (e.g., Table 4, Table 5, etc.)}
#'   \item{season}{License year, April 1st to March 31st}
#'   \item{year}{Year}
#'   \item{region_type}{Region type (by port complex or statewide)}
#'   \item{region}{Region name (port complex name or "statewide")}
#'   \item{length_class_system}{5-class, 6-class, or 36-class system}
#'   \item{length_class_group}{Length class group (ft), using the 5-class system}
#'   \item{length_class}{Length class (ft)}
#'   \item{length_class_floor}{Lower limit of the length class (ft)}
#'   \item{nvessels}{Number of registered commercial fishing vessels}
#' }
"cdfw_n_comm_vessels_length"

#' CDFW annual number of registered commercial fishing vessels by port complex
#'
#' Annual number of registered commercial fishing vessels in California by port complex from 1934-1976.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{source}{Source (Fish Bulletin or CDFW report)}
#'   \item{table}{Table number (e.g., Table 4, Table 5, etc.)}
#'   \item{season}{License year, April 1st to March 31st}
#'   \item{year}{Year}
#'   \item{port_complex}{Port complex (e.g., San Francisco, Monterey, etc.)}
#'   \item{nvessels}{Number of registered commercial fishing vessels}
#' }
"cdfw_n_comm_vessels_port"

#' CDFW annual landings from Commercial Passenger Fishing Vessels
#'
#' Annual landings from Commercial Passenger Fishing Vessels (CPFVs) in California from 1936-2019.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{...}{Source (Fish Bulletin or CDFW report)}
#'   \item{...}{Table number (e.g., Table 4, Table 5, etc.)}
#'   \item{...}{Regional scale (statewide or northern/southern)}
#'   \item{...}{Port complex, 1987-2019 typology}
#'   \item{...}{Port sub-complex, as in the original data}
#'   \item{...}{Year}
#'   \item{...}{Species category (e.g., HMS, rockfish, roundfish, flatfish, etc.)}
#'   \item{...}{Species common name, as in the original data}
#'   \item{...}{Species common name, harmonized across datasets}
#'   \item{...}{Species scientific name}
#'   \item{...}{Landings in number of fish}
#' }
"cdfw_cpfv"

#' CDFW annual participation in and effort by Commercial Passenger Fishing Vessels
#'
#' Annual participation in and effort by from Commercial Passenger Fishing Vessels (CPFVs) in California from 1936-2019.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{source_landings}{Source and table for landings data}
#'   \item{source_cpfvs}{Source and table for registered vessel data}
#'   \item{source_anglers}{Source and table for licensed angler data}
#'   \item{source_time}{Source and table for angler effort data}
#'   \item{region}{Regional scale (statewide or northern/southern)}
#'   \item{port_complex_group}{Port complex, 1987-2019 typology}
#'   \item{port_complex}{Port sub-complex, as in the original data}
#'   \item{year}{Year}
#'   \item{landings_n}{Number of landed fish}
#'   \item{cpfvs_n}{Number of registered CPFVs}
#'   \item{anglers_n}{Number of CPFV anglers}
#'   \item{days_n}{Number of days fished by CPFV anglers}
#'   \item{hours_n}{Number of hours fished by CPFV anglers}
#' }
"cdfw_cpfv_effort"


#' CALCOM annual groundfish landings by port complex and gear type
#'
#' Annual landings of California groundfish by port complex, gear type, and species from 1978-2019 based on the CALCOM database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{market_group}{Species market category (e.g., rockfish, flatfish, elasmobranch, etc.)}
#'   \item{species_code}{Species code}
#'   \item{common_name}{Species common name}
#'   \item{scientific_name}{Species scientific name}
#'   \item{port_complex_code}{Port complex code}
#'   \item{port_complex}{Port complex}
#'   \item{gear_code}{Gear type code}
#'   \item{gear}{Gear type (e.g., hook and line, net, traps, trawl, etc.)}
#'   \item{year}{Year}
#'   \item{source}{Source}
#'   \item{live_yn}{Live (yes or no)}
#'   \item{landings_lb}{Landings volume in pounds (lb)}
#' }
"calcom"

#' SWFSC
#'
#' Monthly landings from California waters by port complex and species from 1928-2002 based on the Mason et al. (2004) digitization effort.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{dataset}{Dataset}
#'   \item{port_complex}{Port complex}
#'   \item{year}{Year}
#'   \item{comm_name_orig}{Common name, as in the original data}
#'   \item{sci_name}{Scientific name}
#'   \item{level}{Taxonomic resolution (species- or group-specific)}
#'   \item{presentation}{Presentation (a.k.a., condition) of the landings (i.e., roe, roe on kelp, claws, not specified)}
#'   \item{landings_lb}{Landings in pounds (lbs)}
#'   \item{landings_kg}{Landings in kilograms (kg)}
#' }
"swfsc"

