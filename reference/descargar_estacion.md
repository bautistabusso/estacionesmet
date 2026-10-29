# Descarga y lee los datos de una estación meteorológica

Descarga el archivo de la estación desde el repositorio de datos del
INTA (si todavía no existe en la ruta indicada) y lo lee.

## Usage

``` r
descargar_estacion(id, ruta)
```

## Arguments

- id:

  Identificador de la estación, por ejemplo `"NH0437"`.

- ruta:

  Ruta donde se guarda el archivo, por ejemplo `"datos/NH0437.csv"`.

## Value

Un tibble con las mediciones de la estación.

## Examples

``` r
if (FALSE) { # \dontrun{
descargar_estacion("NH0437", "datos/NH0437.csv")
} # }
```
