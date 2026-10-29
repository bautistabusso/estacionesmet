# Tabla resumen de temperatura por estación

Calcula la media y el desvío de la temperatura a 150 cm para cada
estación y devuelve una tabla con una fila por estadístico y una columna
por estación.

## Usage

``` r
tabla_resumen_temperatura(datos)
```

## Arguments

- datos:

  Un data frame con las columnas `id` y `temperatura_abrigo_150cm`.

## Value

Un tibble con la columna `estadistico` y una columna por estación.

## Examples

``` r
if (FALSE) { # \dontrun{
tabla_resumen_temperatura(estaciones)
} # }
```
