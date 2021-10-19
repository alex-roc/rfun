test_that("fact_binom() factoriza un binomio algebraico", {
  expect_equal(fact_binom("2x^2yz + 4xy^2z"), "2xyz(x + 2y)")
})
