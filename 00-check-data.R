library(gapminder)
library(tidyverse)
library(dlookr)
library(report)
library(janitor)

#--- voir rapidement les données 
data("iris") 

iris %>% 
  as_tibble() %>% 
  clean_names() %>% 
  str()

iris %>% 
  as_tibble() %>% 
  clean_names() %>% 
  report() %>% 
  summary()
#--- resumé statistiques
iris %>% 
  as_tibble() %>% 
  clean_names() %>% 
  describe() %>% 
  select(-starts_with("p")) %>% 
  papaja::apa_table() %>% 
  clipr::write_clip()
