# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")
# install.packages("ggplot2")

# Title: Histogram: Population Distribution (1952)
# Aim: To create gapminder_1952 and plot a histogram of population using log10 scale.
# Procedure: Step-by-Step Execution 1.   Prepare Data: gapminder is filtered to year 1952 and stored in KasinathCA to provide 142 country observations. 2.   Map Aesthetic: ggplot(KasinathCA, aes(x = pop)) maps population to the x-axis for histogram binning. 3.   Draw Histogram: geom_histogram(bins=30) divides the population range into 30 equal-width bins and counts countries in each. 4.   Apply Log Scale: scale_x_log10() transforms the x-axis, revealing the approximately bell-shaped distribution of country populations.
# Result: Histogram on log scale shows bell-shaped distribution. Most 1952 countries had 1-30 million people.

library(dplyr)
library(gapminder)
library(ggplot2)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>% filter(year == 1952)

ggplot(KasinathCA, aes(x = pop)) +
geom_histogram(bins = 30, fill = "steelblue", color = "white") +
scale_x_log10() +
labs(title = "Population Distribution 1952 - 24MID0124",
x = "Population (log scale)", y = "Count") +
theme_minimal()
