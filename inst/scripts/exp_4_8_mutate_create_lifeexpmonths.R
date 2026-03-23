# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Mutate: Create lifeExpMonths
# Aim: To create a new attribute lifeExpMonths by multiplying lifeExp by 12 using mutate().
# Procedure: Step-by-Step Execution 1.   Load Libraries: dplyr and gapminder are loaded to provide mutate() and dataset access. 2.   Create New Column: mutate(lifeExpMonths = lifeExp * 12) computes a new column by multiplying each lifeExp value by 12. 3.   Store Result: The dataset with the added column is saved into KasinathCA. 4.   Select and Display: select() picks the relevant columns and head(4) shows the first 4 rows confirming the correct calculation.
# Result: New column lifeExpMonths created via mutate(lifeExpMonths = lifeExp * 12).

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
mutate(lifeExpMonths = lifeExp * 12)

print(select(KasinathCA, country, year, lifeExp, lifeExpMonths) %>% head(4))
