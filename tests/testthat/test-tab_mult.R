test_that("tabl_mult() crea tabla de multiplicación", {
  expect_equal(dim(tab_mult(5, simple = TRUE, bonita = FALSE))[1], 5)
})
