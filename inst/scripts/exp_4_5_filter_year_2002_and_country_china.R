# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Filter: year == 2002 AND country China
# Aim: To extract the row where year is 2002 and country is China.
# Procedure: Step-by-Step Execution 1.   Load Libraries: dplyr and gapminder are loaded to provide filter() functionality and the dataset. 2.   Dual Condition Filter: filter(year == 2002, country == China) applies two conditions simultaneously using a comma (logical AND). 3.   Store Result: The single matching row is saved into KasinathCA via the assignment operator. 4.   Print Output: print(KasinathCA) displays the one-row tibble confirming Chinaâ€™s 2002 statistics.
# Result: Single row returned for China in 2002. lifeExp = 72.0, pop = 1.28 billion, gdpPercap = 3119.

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
filter(year == 2002, country == "China")
print(KasinathCA)
