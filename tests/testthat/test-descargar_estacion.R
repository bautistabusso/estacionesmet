test_that("descargar_estacion lee los datos de la estacion", {
  datos <- descargar_estacion("NH0437", "NH0437.csv")
  expect_true(nrow(datos) > 0)
  expect_equal(unique(datos$id), "NH0437")
})
