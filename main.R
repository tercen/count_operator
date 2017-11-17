library(tercen)
library(dplyr)

(ctx = tercenCtx())  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(count = length(.y)) %>%
  ctx$addNamespace() %>%
  ctx$save()
