# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Create gapminder_1952
# Aim: To create a filtered object containing only year 1952 from gapminder.
# Procedure: Step-by-Step Execution 1.   Load Libraries: dplyr and gapminder are loaded to enable filter() and dataset access. 2.   Filter Year 1952: filter(year == 1952) extracts the 142 rows where year equals 1952, one per country. 3.   Store Filtered Data: The filtered tibble is saved into KasinathCA for use in subsequent experiments. 4.   Verify Row Count: cat() prints the row count (142) and print(head()) displays the first rows to confirm correct filtering.
# Result: gapminder_1952 created with 142 rows (one per country) for the year 1952.

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>% filter(year == 1952)

cat("Rows in gapminder_1952:", nrow(KasinathCA), "\n")
print(head(KasinathCA))
