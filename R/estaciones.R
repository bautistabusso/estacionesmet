#' Datos diarios de cinco estaciones meteorológicas del INTA
#'
#' Mediciones diarias de las estaciones NH0472, NH0910, NH0046, NH0098
#' y NH0437.
#'
#' @format Un tibble con 95681 filas y 35 columnas. Algunas de ellas:
#' \describe{
#'   \item{id}{Identificador de la estación.}
#'   \item{fecha}{Fecha de la medición.}
#'   \item{temperatura_abrigo_150cm}{Temperatura media a 150 cm (°C).}
#'   \item{temperatura_abrigo_150cm_maxima}{Temperatura máxima a 150 cm (°C).}
#'   \item{temperatura_abrigo_150cm_minima}{Temperatura mínima a 150 cm (°C).}
#'   \item{precipitacion_pluviometrica}{Precipitación (mm).}
#'   \item{humedad_media_8_14_20}{Humedad media (en porcentaje).}
#'   \item{velocidad_viento_200cm_media}{Velocidad media del viento a 200 cm.}
#' }
#' Las demás columnas son otras variables de temperatura, viento,
#' radiación, humedad y evaporación; muchas tienen valores faltantes.
#'
#' @source Repositorio de datos del INTA:
#'   <https://github.com/rse-r/intro-programacion/tree/main/datos>
"estaciones"
