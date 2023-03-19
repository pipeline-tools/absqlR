![logo](https://raw.githubusercontent.com/chriscardillo/absql/main/images/logo_centered.svg?raw=true)

<!-- badges: start -->
![R-CMD-check](https://github.com/chriscardillo/dbcooper/workflows/R-CMD-check/badge.svg)
<!-- badges: end -->

---

R port for [ABSQL](https://pypi.org/project/ABSQL/). Requires Python to run!

```r
library(absql)

runner <- generate_absql_runner(name="world")
runner$render("hello {{name}}")
```

See the Python docs for more details.