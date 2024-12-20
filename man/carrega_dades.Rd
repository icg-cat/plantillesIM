% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/carrega_dades.R
\name{carrega_dades}
\alias{carrega_dades}
\title{carrega_dades}
\usage{
carrega_dades(ruta, full = 1)
}
\arguments{
\item{ruta}{ruta local fins l'arxiu}

\item{full}{argument per arxius amb extensió xlsx, pot ser una xifra entera (posició del full), o una cadena de text que identifiqui el nom. Per defecte, 1.}
}
\value{
data.frame
}
\description{
funció que serveix per llegir arxius de dades, donada una ruta. Pot llegir els següents formats: .rds, .csv (separat per punt i coma), .sav, .dbf i .xlsx.
}
\examples{
\dontrun{
ruta <- "C:/user/downloads/mydata.rds"
carrega_dades(ruta)
}
}
