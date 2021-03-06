% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{cdfw_ports}
\alias{cdfw_ports}
\title{CDFW annual commercial fisheries landings by port and species}
\format{
A data frame with the following attributes:
\describe{
  \item{source}{Source (Fish Bulletin or CDFW report)}
  \item{table}{Table number (e.g., Table 4, Table 5, etc.)}
  \item{port_complex}{Port complex, 1987-2019 typology}
  \item{port_complex_orig}{Port complex, as in the original data}
  \item{port}{Port name, harmonized across year and datasets}
  \item{port_orig}{Port name, as in the original data}
  \item{type}{Landings or shipments}
  \item{year}{Year}
  \item{comm_name}{Species common name, harmonized across years and datasets}
  \item{comm_name_orig}{Species common name, as in the original data}
  \item{sci_name}{Species scientific name}
  \item{presentation}{Presentation (a.k.a., condition) of the landings (i.e., roe, roe on kelp, claws, not specified)}
  \item{value_used}{Landings/shipments in value (USD)}
  \item{landings_lb}{Landings/shipments in pounds (lb)}
  \item{landings_kg}{Landings/shipments in kilograms (kg)}
}
}
\usage{
cdfw_ports
}
\description{
Annual California commercial fisheries landings and shipments (pounds/values) by port and species from 1941-2019.
}
\keyword{datasets}
