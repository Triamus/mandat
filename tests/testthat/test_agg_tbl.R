# source test data
source("../testdata.R")

#### clean input and alternating function parameters
test_that("normal run", {
  expect_equal(1, 1)
  expect_equal(
    agg_tbl(
      dt = dt, metric = c("a", "b"), metric_name = c("a", "b"),
      dimension = c("c", "d"), agg_fn = "sum"), dt_2dim_sum)
  expect_equal(
    agg_tbl(
      dt = dt, metric = c("a", "b"), metric_name = c("a", "b"),
      dimension = c("c"), agg_fn = "sum"), dt_1dim_sum)
  expect_equal(
    agg_tbl(
      dt = dt, metric = c("a", "b"), metric_name = c("a", "b"),
      dimension = "c", agg_fn = "sum"), dt_1dim_sum)
  expect_equal(
    agg_tbl(
      dt = dt, metric = c("a"), metric_name = c("a"),
      dimension = "c", agg_fn = "sum"), dt_1metric_sum)
  expect_equal(
    agg_tbl(
      dt = dt, metric = c("a", "b"), metric_name = c("a", "b"),
      agg_fn = "sum"), dt_0dim_sum)
  expect_equal(
    agg_tbl(
      dt = dt, metric = c("a")), dt_all_default_sum)
})

#### problematic input and constant function parameters

# empty required input
# wrong input type
# unequal length metric and metric_name
