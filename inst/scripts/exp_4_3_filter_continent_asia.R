# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Filter: continent == Asia
# Aim: To extract rows from gapminder where the continent is Asia.
# Procedure: Step-by-Step Execution 1.   Load Libraries: library(dplyr) and library(gapminder) are loaded to enable pipe operations and dataset access. 2.   Apply Filter: The filter() verb from dplyr extracts only rows where continent equals Asia using ==. 3.   Pipe Operator: The %>% pipe passes the gapminder dataset directly into filter() without saving intermediate results. 4.   Display Output: print(head(KasinathCA)) shows the first 6 filtered rows; nrow() confirms the total count of 396 rows.
# Result: 396 rows extracted where continent == 'Asia' using filter().

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>% filter(continent == "Asia")
print(head(KasinathCA))
cat("Total rows:", nrow(KasinathCA), "\n")
