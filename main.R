library(tercen)
library(dplyr)

(ctx = tercenCtx())  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(count = as.double(length(.y))) %>%
  ctx$addNamespace() %>%
  ctx$save()
