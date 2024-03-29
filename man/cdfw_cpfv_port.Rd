% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{cdfw_cpfv_port}
\alias{cdfw_cpfv_port}
\title{CDFW annual landings from Commercial Passenger Fishing Vessels by port}
\format{
A data frame with the following attributes:
\describe{
  \item{source}{Source (Fish Bulletin or CDFW report)}
  \item{table}{Table number (e.g., Table 4, Table 5, etc.)}
  \item{region}{Regional scale (statewide or northern/southern)}
  \item{port_complex_group}{Port complex, 1987-2019 typology}
  \item{port_complex}{Port sub-complex, as in the original data}
  \item{year}{Year}
  \item{category}{Species category (e.g., HMS, rockfish, roundfish, flatfish, etc.)}
  \item{comm_name_orig}{Species common name, as in the original data}
  \item{comm_name}{Species common name, harmonized across datasets}
  \item{sci_name}{Species scientific name}
  \item{landings_n}{Landings in number of fish}
}
}
\usage{
cdfw_cpfv_port
}
\description{
Annual landings from Commercial Passenger Fishing Vessels (CPFVs) in California by port complex from 1936-2019.
}
\keyword{datasets}
