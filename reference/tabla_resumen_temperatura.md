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
tabla_resumen_temperatura(estaciones)
#> # A tibble: 2 × 6
#>   estadistico NH0046 NH0098 NH0437 NH0472 NH0910
#>   <chr>        <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1 media        17.3   18.6   20.2   18.0   17.7 
#> 2 desvio        5.90   5.98   5.77   5.94   6.12
```
