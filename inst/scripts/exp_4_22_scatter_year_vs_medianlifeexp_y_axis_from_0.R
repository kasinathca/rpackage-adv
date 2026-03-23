# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")
# install.packages("ggplot2")

# Title: Scatter: Year vs MedianLifeExp (y-axis from 0)
# Aim: To visualize by_year as a scatter plot of year vs MedianLifeExp with y-axis starting from 0.
# Procedure: Step-by-Step Execution 1.   Compute Summary: gapminder is grouped by year and summarized to get MedianLifeExp for each of the 12 years. 2.   Initialize Plot: ggplot maps year to x and MedianLifeExp to y; geom_point() draws 12 large dark-blue dots. 3.   Extend Y-Axis: expand_limits(y = 0) forces the y-axis to start at 0, preventing a misleadingly steep appearance. 4.   Label the Chart: labs() sets the title and axis names; theme_minimal() removes the default grey grid background.
# Result: Scatter with y-axis from 0 shows upward global life expectancy trend from 48 to 72 years between 1952 and 2007.

library(dplyr)
library(gapminder)
library(ggplot2)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
group_by(year) %>%
summarize(MedianLifeExp = median(lifeExp), .groups = "drop")

ggplot(KasinathCA, aes(x = year, y = MedianLifeExp)) +
geom_point(color = "darkblue", size = 3) +
expand_limits(y = 0) +
labs(title = "Year vs Median Life Expectancy - 24MID0124",
x = "Year", y = "Median Life Expectancy") +
theme_minimal()
