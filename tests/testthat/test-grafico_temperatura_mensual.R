test_that("el grafico devuelve un objeto ggplot", {
  grafico <- grafico_temperatura_mensual(
    estaciones,
    colores = c("red", "blue", "darkgreen", "orange", "purple")
  )
  expect_s3_class(grafico, "ggplot")
})

test_that("el grafico tiene datos de las cinco estaciones", {
  grafico <- grafico_temperatura_mensual(
    estaciones,
    colores = c("red", "blue", "darkgreen", "orange", "purple")
  )
  expect_equal(length(unique(grafico$data$id)), 5)
})
