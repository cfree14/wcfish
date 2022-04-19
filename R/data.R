
################################################################################
# Meta-data
################################################################################

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

################################################################################
# CDFW commercial landings
################################################################################

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

#' CDFW annual harvest of kelp by bed type
#'
#' Annual harvest of kelp (Macrocystis spp.) by bed type (open vs. leased) from 1916-1976. Harvest is reported in "short" tons (2000 lbs).
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{source}{Source (Fish Bulletin or CDFW report)}
#'   \item{table}{Table number (e.g., Table 4, Table 5, etc.)}
#'   \item{year}{Year}
#'   \item{open_bed_t}{Harvest (short tons) from open beds}
#'   \item{leased_bed_t}{Harvest (short tons) from leased beds}
#'   \item{total_bed_t}{Total harvest (short tons) - sum of open and leased harvest}
#' }
"cdfw_kelp"

#' CDFW annual harvest of kelp
#'
#' Annual harvest of kelp (Macrocystis spp.) from 1916-2019. The data for 2003-2019 was extracted from the figure on the following web-page using DataThief: https://wildlife.ca.gov/Conservation/Marine/Kelp/Commercial-Harvest
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{source}{Source (Fish Bulletin, NOAA FOSS, or CDFW website)}
#'   \item{year}{Year}
#'   \item{type}{Reported or Estimated (using DataThief)}
#'   \item{harvest_lb}{Total harvest in pounds (lbs)}
#'   \item{harvest_t}{Total harvest in short tons (t) - a short ton equals 2000 lbs)}
#'   \item{harvest_kg}{Total harvest in kilograms (kg)}
#'   \item{harvest_mt}{Total harvest in metric tons (mt)}
#' }
"cdfw_kelp_tots"


################################################################################
# CDFW commercial participation
################################################################################

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

################################################################################
# CDFW CPFV data
################################################################################

#' CDFW annual landings from Commercial Passenger Fishing Vessels
#'
#' Annual landings from Commercial Passenger Fishing Vessels (CPFVs) in California from 2000-2019.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{waters}{Waters (Fish Bulletin or CDFW report)}
#'   \item{comm_name}{Species common name, harmonized across datasets}
#'   \item{comm_name_orig}{Species common name, as in the original data}
#'   \item{sci_name}{Species scientific name}
#'   \item{year}{Year}
#'   \item{landings_n}{Landings in number of fish}
#' }
"cdfw_cpfv"

#' CDFW annual landings from Commercial Passenger Fishing Vessels by port
#'
#' Annual landings from Commercial Passenger Fishing Vessels (CPFVs) in California by port complex from 1936-2019.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{source}{Source (Fish Bulletin or CDFW report)}
#'   \item{table}{Table number (e.g., Table 4, Table 5, etc.)}
#'   \item{region}{Regional scale (statewide or northern/southern)}
#'   \item{port_complex_group}{Port complex, 1987-2019 typology}
#'   \item{port_complex}{Port sub-complex, as in the original data}
#'   \item{year}{Year}
#'   \item{category}{Species category (e.g., HMS, rockfish, roundfish, flatfish, etc.)}
#'   \item{comm_name_orig}{Species common name, as in the original data}
#'   \item{comm_name}{Species common name, harmonized across datasets}
#'   \item{sci_name}{Species scientific name}
#'   \item{landings_n}{Landings in number of fish}
#' }
"cdfw_cpfv_port"

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



################################################################################
# NOAA
################################################################################

#' NOAA annual commercial and recreational fisheries landings by state and species
#'
#' Annual commercial and recreational fisheries landings (pounds/value) by U.S. state and species from 1950-2019 from NOAA's FOSS database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{region}{Region}
#'   \item{source}{Data source}
#'   \item{state}{State}
#'   \item{fishery}{Fishery type (commercial or recreational)}
#'   \item{tsn}{NOAA species code}
#'   \item{comm_name_orig}{Common name, as in original data}
#'   \item{sci_name_orig}{Scientific name, as in original data}
#'   \item{year}{Year (1950-2019)}
#'   \item{landings_lb}{Landings in pounds (lb)}
#'   \item{value_usd}{Landings in values ($US)}
#'   \item{confidentiality}{Confidentiality note}
#' }
"noaa"

################################################################################
# PACFIN
################################################################################

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

#' PACFIN monthly commercial Dungeness crab landings by port complex
#'
#' Monthly commercial Dungeness crab landings (pounds/value) by port complex (CA/OR/WA) from 1980-2020 from the PACFIN database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{season}{Season}
#'   \item{year}{Year}
#'   \item{month}{Month}
#'   \item{date}{Date}
#'   \item{state}{State}
#'   \item{port_code}{Port complex code}
#'   \item{port_complex}{Port complex name}
#'   \item{confidential}{Confidentiality flag}
#'   \item{landings_mt}{Landings (mt)}
#'   \item{price_usd_kg}{Price ($/lb)}
#'   \item{revenues_usd}{Revenues (USD)}
#' }
"pacfin_crab2"

#' PACFIN species meta-data
#'
#' Species in the PACFIN database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{spp_code}{Species code}
#'   \item{comm_name}{Common name}
#'   \item{sci_name}{Scientific name}
#'   \item{mgmt_group_code}{Management group code}
#'   \item{complex_code}{Species complex code}
#' }
"pacfin_species"

#' PACFIN ports meta-data
#'
#' Ports in the PACFIN database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{port_code}{Port code}
#'   \item{state1}{State name}
#'   \item{state2}{State abbreviation}
#'   \item{port_name}{Port name}
#'   \item{port_yn}{Port (yes/no)}
#'   \item{long_dd}{Longitude (°W)}
#'   \item{lat_dd}{Latitude (°N)}
#' }
"pacfin_ports"


################################################################################
# RECFIN
################################################################################

#' RECFIN annual recreational landings and discards by state and more
#'
#' Annual recreational fisheries landings and discards by state (CA/OR/WA), water area, mode, trip type, and species from 2001-2020 from the RECFIN database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{state}{State}
#'   \item{water_area}{Water area}
#'   \item{mode}{Mode}
#'   \item{trip_type}{Trip type}
#'   \item{comm_name}{Common name}
#'   \item{year}{Year}
#'   \item{status}{Retained or released (dead)}
#'   \item{catch_n}{Catch, in number of fish}
#'   \item{catch_mt}{Catch, in metric tons}
#' }
"recfin_cte2"

#' RECFIN annual recreational mortality by state and mode
#'
#' Annual recreational fisheries mortality by state (CA/OR/WA), mode, and species from 2001-2020 from the RECFIN database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{state}{State}
#'   \item{mode}{Mode}
#'   \item{comm_name}{Common name}
#'   \item{year}{Year}
#'   \item{catch_n}{Catch, in number of fish}
#'   \item{catch_mt}{Catch, in metric tons}
#' }
"recfin_cte3"

#' RECFIN annual recreational salmon landings and discards from OR and WA
#'
#' Annual recreational salmon landings and discards from OR and WA from 2001-2020 from the RECFIN database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{year}{Year}
#'   \item{month}{Month}
#'   \item{week}{Week}
#'   \item{state}{State}
#'   \item{district}{District}
#'   \item{mode}{Mode}
#'   \item{water_area}{Water area}
#'   \item{subregion}{Subregion}
#'   \item{trip_type}{Trip type}
#'   \item{comm_name}{Common name}
#'   \item{retained_n}{Number of retained fish}
#'   \item{released_n}{Number of released fish}
#' }
"recfin_cte5"

#' RECFIN annual recreational salmon landings and discards from CA
#'
#' Annual recreational salmon landings and discards from CA from 1976-2021 from the RECFIN database.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{year}{Year}
#'   \item{month}{Month}
#'   \item{agency_code}{Agency code}
#'   \item{agency}{Agency}
#'   \item{state}{State}
#'   \item{area}{area}
#'   \item{water_area_code}{Water area code}
#'   \item{water_area}{Water area}
#'   \item{mode}{Mode}
#'   \item{spp_code}{Species code}
#'   \item{comm_name}{Common name}
#'   \item{sci_name}{Scientific name}
#'   \item{retained_n}{Number of retained fish}
#' }
"recfin_cte7"

#' RECFIN species key
#'
#' An unofficial (i.e., made by Chris Free) key to species in the RECFIN data.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{comm_name_orig}{Common name in original data}
#'   \item{comm_name}{Common name, formatted}
#'   \item{sci_name}{Scientific name, as judged by Chris Free}
#'   \item{category}{Taxonomic category, as assigned by Chris Free}
#' }
"recfin_species"


################################################################################
# CALCOM
################################################################################

#' CALCOM annual groundfish landings by port complex, gear type, and species
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

#' SWFSC monthly landings from California waters by port complex and species
#'
#' Monthly landings from California waters by port complex and species from 1928-2002 based on the Mason et al. (2004) digitization effort.
#'
#' @format A data frame with the following attributes:
#' \describe{
#'   \item{dataset}{Dataset}
#'   \item{year}{Year}
#'   \item{month}{Month}
#'   \item{month_num}{Month number}
#'   \item{date_dummy}{Date - first of the month}
#'   \item{port_complex}{Port complex}
#'   \item{comm_name_orig}{Common name, as in the original data}
#'   \item{landings_lb}{Landings in pounds (lbs)}
#'   \item{landings_kg}{Landings in kilograms (kg)}
#' }
"swfsc"

