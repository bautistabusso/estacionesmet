#' Gráfico de la temperatura media mensual por estación
#'
#' Grafica la evolución de la temperatura media mensual de cada estación.
#'
#' @param datos Un data frame con las columnas `id`, `fecha` y
#'   `temperatura_abrigo_150cm`.
#' @param colores Vector de colores, uno por estación. Si es `NULL`
#'   se eligen al azar.
#' @param titulo Título del gráfico.
#'
#' @returns Un objeto ggplot.
#' @export
#'
#' @examples
#' \dontrun{
#' grafico_temperatura_mensual(estaciones)
#' }
grafico_temperatura_mensual <- function(datos, colores = NULL,
                                        titulo = "Temperatura") {
  mensual <- datos |>
    dplyr::mutate(mes = lubridate::floor_date(fecha, "month")) |>
    dplyr::group_by(id, mes) |>
    dplyr::summarise(
      temperatura_media = mean(temperatura_abrigo_150cm, na.rm = TRUE),
      .groups = "drop"
    )

  if (is.null(colores)) {
    colores <- sample(grDevices::colors(), dplyr::n_distinct(mensual$id))
  }

  ggplot2::ggplot(mensual, ggplot2::aes(x = mes, y = temperatura_media,
                                        color = id)) +
    ggplot2::geom_line() +
    ggplot2::scale_color_manual(values = colores) +
    ggplot2::labs(
      title = titulo,
      x = "Mes",
      y = "Temperatura media (°C)",
      color = "Estación"
    )
}
