# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")
# install.packages("ggplot2")

# Title: ggplot: Scatter pop vs gdpPercap (1952)
# Aim: To visualize gapminder_1952 as a ggplot2 scatter plot of population vs gdpPercap.
# Procedure: Step-by-Step Execution 1.   Prepare Data: gapminder is filtered to year 1952 and stored in KasinathCA to serve as the plot data source. 2.   Initialize Plot: ggplot(KasinathCA, aes(x = pop, y = gdpPercap)) maps population to the x-axis and GDP per capita to the y-axis. 3.   Add Points: geom_point() renders each country as a dot; color and size parameters style the points. 4.   Add Labels: labs() sets the title, x-axis, and y-axis labels; theme_minimal() applies a clean background.
# Result: Scatter plot created. Points cluster near low population. Kuwait is a GDP outlier; India and China are population outliers.

library(dplyr)
library(gapminder)
library(ggplot2)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>% filter(year == 1952)

ggplot(KasinathCA, aes(x = pop, y = gdpPercap)) +
geom_point(color = "steelblue", size = 2) +
labs(title = "Pop vs GdpPercap 1952 - 24MID0124",
x = "Population", y = "GDP per Capita") +
theme_minimal()
