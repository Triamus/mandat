library(data.table)
n_size <- 1*10^2
sample_metrics <- rep(1, n_size)
sample_dimensions <- rep(letters[10:11], (n_size / 2))
extra_dimensions <- rep(letters[12:13], (n_size / 2))
df <-
  data.frame(
    a = c(NA, sample_metrics),
    b = c(sample_metrics, NA),
    c = c(NA, sample_dimensions),
    d = c(sample_dimensions, NA),
    x = c(NA, sample_metrics),
    y = c(extra_dimensions, NA),
    stringsAsFactors = F)

dt <- as.data.table(df)

dt_2dim_sum <-
  data.table(
    c = c(NA, "j", "k", "k"),
    d = c("j", "k", NA, "j"),
    a = c(0, 50, 1, 49),
    b = c(1, 50, 0, 49),
    key = c("c", "d")
  )

dt_1dim_sum <-
  data.table(
    c = c(NA, "j", "k"),
    a = c(0, 50, 50),
    b = c(1, 50, 49),
    key = c("c")
  )

dt_1metric_sum <-
  data.table(
    c = c(NA, "j", "k"),
    a = c(0, 50, 50),
    key = c("c")
  )

dt_0dim_sum <-
  data.table(
    a = c(100),
    b = c(100)
  )

dt_all_default_sum <-
  data.table(
    a = c(100)
  )
