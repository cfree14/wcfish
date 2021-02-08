
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

#' California's commercial fishing blocks
#'
#' An 'sf' object (similar to a shapefile) mapping California's commercial fishing blocks.
#'
#' @format An 'sf' object data frame with 557 rows (blocks) and 13 variables (block attributes):
#' \describe{
#'   \item{block_id}{Block id}
#'   \item{block_type}{Block type (e.g., inshore, offshore)}
#'   \item{block_region}{Block region (i.e., Northern, Central)}
#'   \item{block_area}{Port complex}
#'   \item{block_district}{District}
#'   \item{block_ramp}{RAMP zone}
#'   \item{depth}{Depth zone (i.e., shallower or deeper than 100 fathoms)}
#'   \item{block_band}{Latitudinal band id}
#'   \item{bloc_band_lat_dd}{Latitudinal band latitude (°N)}
#'   \item{block_lat_dd}{Latitude (°N)}
#'   \item{block_long_dd}{Longitude (°W)}
#'   \item{block_sqkm}{Area (sq. km)}
#' }
"blocks"
