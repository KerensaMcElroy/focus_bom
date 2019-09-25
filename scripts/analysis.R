library(tidyverse)

# raw data into tibbles
BOM_data <- read_csv(file="data/BOM_data.csv")
BOM_stations <- read_csv(file="data/BOM_stations.csv")

#tidying_data

BOM_data_tidy <- BOM_data %>%
  separate(col = Temp_min_max, into = c("Temp_min", "Temp_max"), sep = "/")

