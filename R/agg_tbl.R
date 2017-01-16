#' Aggregates a data.table
#' @param dt A data.table object
#' @param metric A vector of numeric variable(s) to aggregate
#' @param metric_name A vector of variable name(s) for the numeric variable(s) to aggregate. Defaults to metric.
#' @param dimension A vector of dimension variable(s) to aggregate by
#' @param dimension_name A vector of dimension variable name(s) for the dimension variable(s). Defaults to dimension.
#' @param agg_fn An aggregation function
#' @param na.rm logical. Should missing values (including NaN) be removed?
#' @return Returns a data.table
#' @export
#' @examples
#' \dontrun{
#' to follow
#' }

agg_tbl <-
  function(dt, metric, metric_name = metric,
           dimension, dimension_name = dimension,
           agg_fn = "sum", na.rm = TRUE) {

    options(datatable.verbose=TRUE)
    e <- function(x) getFunction(agg_fn)(x, na.rm = na.rm)

    temp <- dt[, setNames(lapply(.SD, e), metric_name),
               keyby = dimension, .SDcols = metric]
    temp[]

  }


