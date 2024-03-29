% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{mpas_ca}
\alias{mpas_ca}
\title{California marine protected areas}
\format{
An 'sf' object data frame with 155 rows (MPAs) and 14 variables (MPA attributes):
\describe{
  \item{name}{MPA name, designation abbreviated}
  \item{name_full}{MPA name, designation spelled out}
  \item{name_short}{MPA name, designation removed}
  \item{region}{MLPA region}
  \item{type}{MPA type (SMR, SMRMA, SMCA, SMP, FMP, FMCA, etc)}
  \item{mpla_yn}{MPA in MLPA (yes/no)?}
  \item{implementation_year}{Implementation year}
  \item{implementation_date}{Implementation date}
  \item{block_id}{Primary block associated with the MPA}
  \item{...}{...}
}
}
\usage{
mpas_ca
}
\description{
An 'sf' object (similar to a shapefile) mapping the California's marine protected areas.
}
\keyword{datasets}
