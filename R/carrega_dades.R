#' carrega_dades
#' @description
#' funció que serveix per llegir arxius de dades, donada una ruta. Pot llegir els següents formats: .rds, .csv (separat per punt i coma), .sav, .dbf i .xlsx.
#'
#' @param ruta ruta local fins l'arxiu
#' @param full argument per arxius amb extensió xlsx, pot ser una xifra entera (posició del full), o una cadena de text que identifiqui el nom. Per defecte, 1.
#'
#' @return data.frame
#' @export
#' @examples
#' \dontrun{
#' ruta <- "C:/user/downloads/mydata.rds"
#' carrega_dades(ruta)
#' }
carrega_dades <- function(ruta, full = 1){
  ext <- tolower(tools::file_ext(ruta)) # extreu extensió en minúscula

  tryCatch({
    switch(ext,
           csv = utils::read.csv2(ruta),
           rds = readRDS(ruta),
           sav = foreign::read.spss(ruta, to.data.frame = T),
           dbf = foreign::read.dbf(ruta),
           xlsx = openxlsx::read.xlsx(ruta, sheet = full),
           stop("Invalid file type")
    )
  }, error = function(e) {
    message("Error llegint l'arxiu: si us plau, feu servir un d'aquests formats: .csv, .rds, .sav, .dbf", ".xlsx", type = "error")
    return(NULL)
  })

}
