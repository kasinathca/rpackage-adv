# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Load and Inspect gapminder
# Aim: To load the gapminder dataset and examine its structure using str(), head(), and glimpse().
# Procedure: Step-by-Step Execution 1.   Load Libraries: library(dplyr) and library(gapminder) activate the required packages in the R environment. 2.   Assign Dataset: The gapminder dataset is stored into the variable KasinathCA using the assignment operator <-. 3.   Inspect Structure: str(KasinathCA) reveals data types and dimensions; head() shows the first 6 rows. 4.   Glimpse View: glimpse(KasinathCA) displays a transposed summary showing columns, types, and sample values.
# Result: gapminder loaded. 1,704 rows and 6 columns (country, continent, year, lifeExp, pop, gdpPercap).

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder
str(KasinathCA)
head(KasinathCA)
glimpse(KasinathCA)
