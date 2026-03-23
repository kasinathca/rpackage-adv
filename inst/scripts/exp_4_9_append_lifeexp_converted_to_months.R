# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Append lifeExp Converted to Months
# Aim: To append lifeExpMonths (lifeExp x 12, rounded to 1 decimal) to the dataset.
# Procedure: Step-by-Step Execution 1.   Load Libraries: dplyr and gapminder are loaded into the R session. 2.   Mutate with Rounding: mutate(lifeExpMonths = round(lifeExp * 12, 1)) creates the new column and rounds each value to 1 decimal place. 3.   Append to Dataset: The resulting 7-column tibble is saved into KasinathCA, adding lifeExpMonths to all existing columns. 4.   Verify with head(): print(head(KasinathCA)) confirms the new column is appended correctly with rounded values.
# Result: lifeExpMonths appended. Dataset now has 7 columns. Values are lifeExp x 12 rounded to 1 decimal.

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
mutate(lifeExpMonths = round(lifeExp * 12, 1))

print(head(KasinathCA))
