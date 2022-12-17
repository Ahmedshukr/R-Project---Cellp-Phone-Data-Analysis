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


#=========================================================#
ASSESSING
#=========================================================#
#assessing the dataset
str(Cellphone)

#summary of the dataset
summary(Cellphone)

Cellphone %>%  
  select(is.numeric)

#select the desired columns and name the dataset cellphone
cellphone <- Cellphone %>% 
  select(c('Country Name', '1981':'2020'))

View(cellphone)

#structure of the dataset
str(cellphone)

# checking any NA values
anyNA(cellphone)

#sum of the NA values
sum(is.na(cellphone))

#locations of the missing values
which(is.na(Cellphone))

#========================================================#
#CLEANING
#========================================================#
#let us replace all the NA values with zeros
df <- replace(Cellphone, is.na(Cellphone), 0)

#check if there are still NA values
sum(is.na(df))

View(df)

View(select(df, c('Country Name', '1980':'1992')))


Cellphone[is.na(Cellphone)] <- 0

select_if(cellphone, is.numeric) 

View(Cellphone)



