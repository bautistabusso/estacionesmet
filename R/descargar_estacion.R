#' Descarga y lee los datos de una estación meteorológica
#'
#' Descarga el archivo de la estación desde el repositorio de datos del
#' INTA (si todavía no existe en la ruta indicada) y lo lee.
#'
#' @param id Identificador de la estación, por ejemplo `"NH0437"`.
#' @param ruta Ruta donde se guarda el archivo, por ejemplo
#'   `"datos/NH0437.csv"`.
#'
#' @returns Un tibble con las mediciones de la estación.
#' @export
#'
#' @examples
#' \dontrun{
#' descargar_estacion("NH0437", "datos/NH0437.csv")
#' }
descargar_estacion <- function(id, ruta) {
  url <- paste0(
    "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/",
    id, ".csv"
  )
  dir.create(dirname(ruta), showWarnings = FALSE, recursive = TRUE)
  if (!file.exists(ruta)) {
    utils::download.file(url = url, destfile = ruta)
  }
  readr::read_csv(ruta)
}
