#installing the packages
install.packages("tidyverse")

#loading the library
library(tidyverse)

#reading the dataset from a given link
Cellphone <- read_csv("https://raw.githubusercontent.com/Ahmedshukr/Cell-Phone-Dataset-Data-Analysis/main/cell_phones_total.csv")

# view the dataset
View(Cellphone)

# select the desired the section and then view it
Cellphone %>% 
  select(c('Country Name', '1980':'1993')) %>% 
  View()

#assessing the dataset
str(Cellphone)

#summary of the dataset
summary(Cellphone)

Cellphone %>%  
  select(is.numeric)


Cellphone %>% 
  select()
#sum of the NA values
sum(is.na(Cellphone))

which(is.na(Cellphone))

#select the desired columns and name the dataset cellphone
cellphone <- Cellphone %>% 
  select(c('Country Name', '1981':'2020'))

df <- replace(Cellphone, is.na(Cellphone), 0)
sum(is.na(df))

View(df)

View(select(df, c('Country Name', '1980':'1992')))


Cellphone[is.na(Cellphone)] <- 0

select_if(df, is.numeric) 

View(Cellphone)


ggplot(Cellphone) +
  geom_point(aes(x=2000, y = (Country Name)))

