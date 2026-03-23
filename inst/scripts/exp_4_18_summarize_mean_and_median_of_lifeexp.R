# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Summarize: Mean and Median of lifeExp
# Aim: For the full gapminder dataset, compute the mean and median of lifeExp using summarize().
# Procedure: Step-by-Step Execution 1.   Load Libraries: dplyr and gapminder are loaded into the R environment. 2.   Pipe to Summarize: The %>% operator passes gapminder into summarize(), collapsing all 1,704 rows into a single summary row. 3.   Compute Statistics: mean_lifeExp = mean(lifeExp) and median_lifeExp = median(lifeExp) calculate the global averages. 4.   Store and Print: The single-row result is saved in KasinathCA and printed, showing mean = 59.47 and median = 60.71.
# Result: Global mean lifeExp = 59.47 and median lifeExp = 60.71 across all 1,704 observations in gapminder.

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
summarize(
mean_lifeExp   = mean(lifeExp),
median_lifeExp = median(lifeExp)
)

print(KasinathCA)
