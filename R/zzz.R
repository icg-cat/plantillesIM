current_version <- packageVersion("plantillesIM")

.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    "Gràcies per fer servir aquest paquet, que s'ha desenvolupat dins de les línies de treball i gràcies al finançament de l'Institut Metròpoli (institutmetropoli.cat). Si us plau, referencieu-lo com segueix:\n\n",
    "Cruz-Gómez, Irene & El Kabiri Ouarqui, Iman (2024). plantillesIM. Plantilles en RMD per tasques analítiques freqüents. ",
    "Versió ", current_version[[1]],
    ". https://github.com/icg-cat/plantillesIM")
}
