# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Sort lifeExp Ascending and Descending
# Aim: To load gapminder and sort lifeExp in ascending and descending order.
# Procedure: Step-by-Step Execution 1.   Load Libraries: dplyr and gapminder are loaded to enable arrange() and dataset access. 2.   Ascending Sort: arrange(lifeExp) sorts rows from lowest to highest life expectancy and stores the result in KasinathCA_asc. 3.   Descending Sort: arrange(desc(lifeExp)) wraps the column in desc() to reverse the sort order into KasinathCA_desc. 4.   Display Results: head() with column selection prints the top 3 rows for each sort, showing Rwanda (lowest) and Japan (highest).
# Result: Ascending: Rwanda 1992 has lowest lifeExp (23.6). Descending: Japan 2007 has highest lifeExp (82.6).

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA_asc  <- gapminder %>% arrange(lifeExp)
cat("Lowest lifeExp:\n")
print(head(KasinathCA_asc[,c("country","year","lifeExp")], 3))

KasinathCA_desc <- gapminder %>% arrange(desc(lifeExp))
cat("Highest lifeExp:\n")
print(head(KasinathCA_desc[,c("country","year","lifeExp")], 3))
