#' Tabla resumen de temperatura por estación
#'
#' Calcula la media y el desvío de la temperatura a 150 cm para cada
#' estación y devuelve una tabla con una fila por estadístico y una
#' columna por estación.
#'
#' @param datos Un data frame con las columnas `id` y
#'   `temperatura_abrigo_150cm`.
#'
#' @returns Un tibble con la columna `estadistico` y una columna por
#'   estación.
#' @export
#'
#' @examples
#' \dontrun{
#' tabla_resumen_temperatura(estaciones)
#' }
tabla_resumen_temperatura <- function(datos) {
  datos |>
    dplyr::group_by(id) |>
    dplyr::summarise(
      media = mean(temperatura_abrigo_150cm, na.rm = TRUE),
      desvio = stats::sd(temperatura_abrigo_150cm, na.rm = TRUE)
    ) |>
    tidyr::pivot_longer(
      cols = c(media, desvio),
      names_to = "estadistico",
      values_to = "valor"
    ) |>
    tidyr::pivot_wider(names_from = id, values_from = valor)
}
