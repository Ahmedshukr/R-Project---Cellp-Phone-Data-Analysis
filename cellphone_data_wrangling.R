#installing the packages
install.packages("tidyverse")

library(tidyverse)

Cellphone <- read_csv("https://raw.githubusercontent.com/Ahmedshukr/Cell-Phone-Dataset-Data-Analysis/main/cell_phones_total.csv")

View(Cellphone)

View(select(Cellphone, "1980":"2020"))

View(select(Cellphone, c('Country Name', '1980':'1993')))

#assessing the dataset
str(Cellphone)

Cellphone %>%  
  select(is.numeric)

Cellphone %>% 
  select()
#sum of the NA values
sum(is.na(Cellphone))

which(is.na(Cellphone))

df <- replace(Cellphone, is.na(Cellphone), 0)
sum(is.na(df))

View(df)

View(select(df, c('Country Name', '1980':'1992')))


Cellphone[is.na(Cellphone)] <- 0

select_if(df, is.numeric) 

View(Cellphone)


ggplot(Cellphone) +
  geom_point(aes(x=2000, y = (Country Name)))

