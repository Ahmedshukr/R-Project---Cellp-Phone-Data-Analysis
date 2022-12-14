install.packages("tidyverse")

library(tidyverse)

Cellphone <- read_csv("https://raw.githubusercontent.com/Ahmedshukr/Cell-Phone-Dataset-Data-Analysis/main/cell_phones_total.csv")

View(Cellphone)

View(select(Cellphone, "1980":"2020"))

View(select(Cellphone, c('Country Name', '1980':'1991')))

#assessing the dataset

