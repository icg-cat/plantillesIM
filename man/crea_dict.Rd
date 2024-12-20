% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crea_dict.R
\name{crea_dict}
\alias{crea_dict}
\title{crea diccionari de variables a partir de labels}
\usage{
crea_dict(dades_sav)
}
\arguments{
\item{dades_sav}{labelled dataframe, normalment resultat de foreign::read.spssÇ()}
}
\value{
data.frame
}
\description{
crea diccionari de variables a partir de labels
}
\examples{
\dontrun{
ruta <- "C:/user/mydata.sav"
dades <- foreign::read.spss(ruta, use.value.labels = T)
dict <- crea_dict(dades)
}
}
