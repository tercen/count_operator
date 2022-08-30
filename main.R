library(tercen)
library(dplyr)

ctx <- tercenCtx()

df.out<-ctx %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(count = as.double(length(.y))) %>%
  ctx$addNamespace() 

df.out %>%
  ctx$save()
