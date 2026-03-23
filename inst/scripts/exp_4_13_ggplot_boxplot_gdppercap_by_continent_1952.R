# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")
# install.packages("ggplot2")

# Title: ggplot: Boxplot gdpPercap by Continent (1952)
# Aim: To visualize gapminder_1952 as a ggplot2 boxplot of continent vs gdpPercap.
# Procedure: Step-by-Step Execution 1.   Prepare Data: gapminder is filtered to year 1952 to create the gapminder_1952 subset. 2.   Map Aesthetics: aes(x = continent, y = gdpPercap, fill = continent) maps continent to both the x-axis and fill colour. 3.   Add Boxplot Layer: geom_boxplot() draws a box-and-whisker plot showing the median, IQR, and outliers per continent. 4.   Apply Labels and Theme: labs() titles the chart; theme_minimal() removes the grey background for a cleaner look.
# Result: Boxplot shows stark GDP inequality. Europe and Oceania lead; Africa has the lowest median GDP in 1952.

library(dplyr)
library(gapminder)
library(ggplot2)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>% filter(year == 1952)

ggplot(KasinathCA, aes(x = continent, y = gdpPercap, fill = continent)) +
geom_boxplot() +
labs(title = "GdpPercap by Continent 1952 - 24MID0124",
x = "Continent", y = "GDP per Capita") +
theme_minimal()
