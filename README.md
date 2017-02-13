# mandat - Manage data fast
Fast data aggregation and wrangling with function wrappers around [data.table](https://github.com/Rdatatable/data.table) library.

* functions assume transactional data with metrics (facts) and attributes (dimensions)
* current dev around two functions
  + agg_tbl (v0.1): aggregate table with custom (standard, e.g. sum, min, max, median) statistical function over selected metrics grouped by selected dimension
  + get_dist (in design): get distribution of selected metrics and dimensions with count, sum (where applicable), and cum dist --> look at [Hmisc](https://github.com/harrelfe/Hmisc) for inspiration
* future dev ideas
  + wrappers around common merge / join operations
  + delta computations
  + wrappers around reshaping

**Pull requests / ideas welcome!**
