# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Create by_continent: Median gdpPercap (1952)
# Aim: To create by_continent: filter 1952, group by continent, compute median gdpPercap.
# Procedure: Step-by-Step Execution 1.   Filter Year 1952: filter(year == 1952) restricts the dataset to the 142 rows for the year 1952. 2.   Group by Continent: group_by(continent) divides the 142 rows into 5 continent groups. 3.   Compute Median: summarize(MedianGdpPercap = median(gdpPercap)) calculates the median GDP per capita for each continent. 4.   Print Table: print(KasinathCA) displays the 5-row result, showing Oceania highest (10,298) and Africa lowest (987).
# Result: by_continent for 1952 created. Oceania leads (10298), Africa lowest (987). Europe second highest at 5142.

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
filter(year == 1952) %>%
group_by(continent) %>%
summarize(
MedianGdpPercap = median(gdpPercap),
.groups = "drop"
)

print(KasinathCA)
