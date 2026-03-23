# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Filter 1957, Sort pop Descending
# Aim: To filter gapminder for year 1957 and sort by population in descending order.
# Procedure: Step-by-Step Execution 1.   Load Libraries: dplyr and gapminder are loaded to enable piped filter and arrange operations. 2.   Filter Year: filter(year == 1957) extracts the 142 rows corresponding to the year 1957. 3.   Sort Population: arrange(desc(pop)) reorders the filtered data from largest to smallest population. 4.   Display Top 5: print(head(KasinathCA, 5)) shows the 5 most populous countries in 1957, led by China.
# Result: 1957 data filtered and sorted by pop descending. China had the highest population (637M) in 1957.

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
filter(year == 1957) %>%
arrange(desc(pop))
print(head(KasinathCA, 5))
