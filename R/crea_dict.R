#' crea diccionari de variables a partir de labels
#'
#' @param dades_sav labelled dataframe, normalment resultat de foreign::read.spssÇ()
#'
#' @return data.frame
#'
#' @examples
#' \dontrun{
#' ruta <- "C:/user/mydata.sav"
#' dades <- foreign::read.spss(ruta, use.value.labels = T)
#' dict <- crea_dict(dades)
#' }
crea_dict <- function(dades_sav){
  dplyr::bind_cols(
    nom = attr(dades_sav, which = "names"),
    lab = attr(dades_sav, which = "variable.labels"),
    val = sapply(dades_sav, function(x){
      paste0(unique(x), collapse = ", ")
    })
  )
}
