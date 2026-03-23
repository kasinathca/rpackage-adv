# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Filter: year == 1957
# Aim: To extract rows from gapminder where the year is 1957.
# Procedure: Step-by-Step Execution 1.   Load Libraries: library(dplyr) and library(gapminder) are loaded to enable dplyr verbs and dataset access. 2.   Apply Filter: filter(year == 1957) extracts all rows where the year column equals 1957. 3.   Pipe Chain: The %>% operator connects gapminder to filter() so the result flows directly into KasinathCA. 4.   Display Output: print(head(KasinathCA)) shows the first rows; cat() prints the total row count of 142.
# Result: 142 rows (one per country) for year 1957 extracted using filter().

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>% filter(year == 1957)
print(head(KasinathCA))
cat("Total rows:", nrow(KasinathCA), "\n")
