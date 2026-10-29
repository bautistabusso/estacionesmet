# Gráfico de la temperatura media mensual por estación

Grafica la evolución de la temperatura media mensual de cada estación.

## Usage

``` r
grafico_temperatura_mensual(datos, colores, titulo = "Temperatura")
```

## Arguments

- datos:

  Un data.frame con las columnas `id`, `fecha` y
  `temperatura_abrigo_150cm`.

- colores:

  Vector de colores, uno por estación.

- titulo:

  Título del gráfico. Por defecto `"Temperatura"`.

## Value

Un objeto ggplot.

## Examples

``` r
grafico_temperatura_mensual(
  estaciones,
  colores = c("red", "blue", "darkgreen", "orange", "purple")
)
#> Warning: Removed 1 row containing missing values or values outside the scale range
#> (`geom_line()`).
```
