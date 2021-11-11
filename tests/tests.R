library(earthquakes)
testthat::context("earthquakes")

data <- utils::read.delim("earthquakes.tsv")

testthat::test_that("eq_clean_data returns a data.frame", {
  testthat::expect_true(is.data.frame(earthquakes::eq_clean_data(data)))
})

testthat::test_that("eq_location_clean returns a data.frame", {
  testthat::expect_true(is.data.frame(earthquakes::eq_location_clean(data)))
})

