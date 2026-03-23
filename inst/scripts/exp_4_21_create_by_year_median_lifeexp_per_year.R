# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")

# Title: Create by_year: Median lifeExp per Year
# Aim: To create by_year by grouping gapminder by year and summarizing the median lifeExp.
# Procedure: Step-by-Step Execution 1.   Load Libraries: dplyr and gapminder are loaded. 2.   Group by Year: group_by(year) organises the 1,704 rows into 12 yearly groups. 3.   Summarize: summarize(MedianLifeExp = median(lifeExp)) computes one median per year; .groups = drop ungroups the result. 4.   Print Full Table: print(KasinathCA) shows all 12 rows confirming a steady increase from 48.4 (1952) to 71.9 (2007).
# Result: by_year created (12 rows). Global median life expectancy rose consistently from 48.4 (1952) to 71.9 (2007).

library(dplyr)
library(gapminder)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
group_by(year) %>%
summarize(
MedianLifeExp = median(lifeExp),
.groups = "drop"
)

print(KasinathCA)
