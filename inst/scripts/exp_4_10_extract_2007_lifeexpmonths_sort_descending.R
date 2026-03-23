# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Extract 2007, lifeExpMonths, Sort Descending
# Aim: To extract year 2007, compute lifeExpMonths, and arrange in descending order.
# Procedure: Step-by-Step Execution 1.   Filter Year: filter(year == 2007) restricts the dataset to the 142 rows for the year 2007. 2.   Add Computed Column: mutate(lifeExpMonths = round(lifeExp * 12, 1)) appends the converted life expectancy values. 3.   Sort Descending: arrange(desc(lifeExpMonths)) orders countries from highest to lowest lifeExpMonths. 4.   Select Columns: select(country, lifeExp, lifeExpMonths) keeps only the relevant columns; head(5) shows the top 5 countries.
# Result: 2007 filtered, lifeExpMonths computed, sorted descending. Japan leads with 991.2 months (82.6 years).

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
filter(year == 2007) %>%
mutate(lifeExpMonths = round(lifeExp * 12, 1)) %>%
arrange(desc(lifeExpMonths)) %>%
select(country, lifeExp, lifeExpMonths)

print(head(KasinathCA, 5))
