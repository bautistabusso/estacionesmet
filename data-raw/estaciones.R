# Arma el dataset `estaciones` con las 5 estaciones del INTA
carpeta <- tempdir()

estaciones <- rbind(
  descargar_estacion("NH0472", file.path(carpeta, "NH0472.csv")),
  descargar_estacion("NH0910", file.path(carpeta, "NH0910.csv")),
  descargar_estacion("NH0046", file.path(carpeta, "NH0046.csv")),
  descargar_estacion("NH0098", file.path(carpeta, "NH0098.csv")),
  descargar_estacion("NH0437", file.path(carpeta, "NH0437.csv"))
)

usethis::use_data(estaciones, overwrite = TRUE)
