test_that("la tabla resumen tiene media y desvio", {
  tabla <- tabla_resumen_temperatura(estaciones)
  expect_equal(tabla$estadistico, c("media", "desvio"))
})

test_that("la tabla resumen tiene una columna por estacion", {
  tabla <- tabla_resumen_temperatura(estaciones)
  expect_length(tabla, 6)
})
