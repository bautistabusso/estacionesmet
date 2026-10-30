# Datos diarios de cinco estaciones meteorológicas del INTA

Mediciones diarias de las estaciones NH0472, NH0910, NH0046, NH0098 y
NH0437.

## Usage

``` r
estaciones
```

## Format

Un tibble con 95681 filas y 35 columnas. Algunas de ellas:

- id:

  Identificador de la estación.

- fecha:

  Fecha de la medición.

- temperatura_abrigo_150cm:

  Temperatura media a 150 cm (°C).

- temperatura_abrigo_150cm_maxima:

  Temperatura máxima a 150 cm (°C).

- temperatura_abrigo_150cm_minima:

  Temperatura mínima a 150 cm (°C).

- precipitacion_pluviometrica:

  Precipitación (mm).

- humedad_media_8_14_20:

  Humedad media (en porcentaje).

- velocidad_viento_200cm_media:

  Velocidad media del viento a 200 cm.

Las demás columnas son otras variables de temperatura, viento,
radiación, humedad y evaporación; muchas tienen valores faltantes.

## Source

Repositorio de datos del INTA:
<https://github.com/rse-r/intro-programacion/tree/main/datos>
