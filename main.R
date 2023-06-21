library(tercen)
library(dplyr)
library(data.table)

ctx <- tercenCtx()

dat <- ctx %>% 
  select(.y, .ci, .ri) %>%
  as.data.table()

dat[, .(count = as.numeric(.N)), by = .(.ci, .ri)] %>%
  as_tibble() %>%
  arrange(.ci, .ri) %>%
  ctx$addNamespace() %>%
  ctx$save()
