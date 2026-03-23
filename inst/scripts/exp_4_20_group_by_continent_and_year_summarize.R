# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Group by Continent and Year: Summarize
# Aim: For gapminder, group by continent and year, then summarize median lifeExp and max gdpPercap.
# Procedure: Step-by-Step Execution 1.   Load Libraries: dplyr and gapminder are loaded. 2.   Group Data: group_by(continent, year) creates 60 groups (5 continents x 12 years), one for each combination. 3.   Summarize Groups: summarize() computes median_lifeExp and max_gdpPercap within each group; .groups = drop removes grouping. 4.   Display Results: print(head(KasinathCA, 8)) shows the first 8 rows of the 60-row grouped summary.
# Result: Grouped summary computed (60 rows: 5 continents x 12 years). Asia shows highest max GDP due to Kuwait.

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
group_by(continent, year) %>%
summarize(
median_lifeExp = median(lifeExp),
max_gdpPercap  = max(gdpPercap),
.groups = "drop"
)

print(head(KasinathCA, 8))
