library(tidyverse)

ec <- read_csv("social_capital_county.csv") |>
  select(county, county_name, pop2018, ec_county) |>
  drop_na() |>
  mutate(state = str_remove(county_name, ".*, "))

write_rds(ec, "superior-ec.rds")
