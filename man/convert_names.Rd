% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_names.R
\name{convert_names}
\alias{convert_names}
\title{Convert common names to common format}
\usage{
convert_names(names, to)
}
\arguments{
\item{names}{Common names}

\item{to}{Format to convert to: regular ("Dungeness crab") or reverse ("Crab, Dungeness")}
}
\value{
Converted common names
}
\description{
This function converts fish common names to a common format: regular ("Dungeness crab") or reverse ("Crab, Dungeness").
}
\examples{
# Convert common name
convert_names(names=c("California spiny lobster", "Halibut, Pacific", "Hake", "Warty sea cucumber"), to="reverse")
convert_names(names=c("Lobster, California spiny", "Pacific halibut", "Hake", "Crab, rock", "Sea cucumber, warty"), to="regular")
}
