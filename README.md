![logo](https://raw.githubusercontent.com/pipeline-tools/absql/main/images/logo_centered.svg?raw=true)

<!-- badges: start -->
![R-CMD-check](https://github.com/pipeline-tools/absqlR/workflows/R-CMD-check/badge.svg)
<!-- badges: end -->

---

R port for [ABSQL](https://pypi.org/project/ABSQL/). Requires Python to run!

```r
library(absql)

runner <- generate_absql_runner(name="world")
runner$render("hello, {{name}}!")
# "hello, world!"
```

See the Python docs for more details!
