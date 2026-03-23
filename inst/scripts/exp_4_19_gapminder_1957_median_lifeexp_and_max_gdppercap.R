# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: gapminder 1957: Median lifeExp and Max gdpPercap
# Aim: For gapminder 1957, compute the median lifeExp and maximum gdpPercap.
# Procedure: Step-by-Step Execution 1.   Load Libraries: dplyr and gapminder are loaded. 2.   Filter Year: filter(year == 1957) narrows the dataset to 142 observations for the year 1957. 3.   Summarize: summarize() collapses the filtered data, computing median_lifeExp and max_gdpPercap in one step. 4.   Print Output: print(KasinathCA) displays the result: median lifeExp = 48.4 years, max gdpPercap = 113,523 (Kuwait).
# Result: For 1957: median lifeExp = 48.4 years, max gdpPercap = 113,523 (Kuwait).

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
filter(year == 1957) %>%
summarize(
median_lifeExp = median(lifeExp),
max_gdpPercap  = max(gdpPercap)
)

print(KasinathCA)
