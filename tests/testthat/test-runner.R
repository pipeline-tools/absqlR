test_that("Runner renders simple", {
  skip_on_cran()
  runner <- generate_absql_runner(name="world")
  expect_equal("hello world", runner$render("hello {{name}}"))
  
})

loopy_template <- "
{%- set greetings=['hi', 'heyyo', 'hey', 'hello'] %}
{%- for g in greetings %}
{%- if g != 'heyyo' %}
{{g}} {{name}}
{%- endif %}
{%- endfor %}
"

test_that("Runner renders loops and ifs", {
  skip_on_cran()
  runner <- generate_absql_runner(name="world")
  expect_equal("hi world\nhey world\nhello world", runner$render(loopy_template))
})
