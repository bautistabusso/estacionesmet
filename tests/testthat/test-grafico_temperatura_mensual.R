test_that("el grafico devuelve un objeto ggplot", {
  grafico <- grafico_temperatura_mensual(
    estaciones,
    colores = c("red", "blue", "darkgreen", "orange", "purple")
  )
  expect_s3_class(grafico, "ggplot")
})

test_that("el grafico falla si no se indican los colores", {
  expect_error(grafico_temperatura_mensual(estaciones))
})
