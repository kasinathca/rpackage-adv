# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")
# install.packages("ggplot2")

# Title: Scatter: pop vs lifeExp, colour=continent, size=gdpPercap (1952)
# Aim: To visualize gapminder_1952 scatter of pop vs lifeExp with colour by continent and point size by gdpPercap.
# Procedure: Step-by-Step Execution 1.   Prepare Data: gapminder is filtered to year 1952 to create the 1952 subset. 2.   Multi-Aesthetic Mapping: aes() maps pop to x, lifeExpto y, continent to colour, and gdpPercap to point size simultaneously. 3.   Add Transparent Points: geom_point(alpha = 0.7) draws semi-transparent points to reduce overplotting. 4.   Log Scale and Labels: scale_x_log10() spreads population values; labs() names all four aesthetics including colour and size legends.
# Result: Multi-aesthetic scatter plot. European countries show high lifeExp and large GDP (large points); Africa shows opposite.

library(dplyr)
library(gapminder)
library(ggplot2)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>% filter(year == 1952)

ggplot(KasinathCA, aes(x = pop, y = lifeExp,
color = continent, size = gdpPercap)) +
geom_point(alpha = 0.7) +
scale_x_log10() +
labs(title = "Pop vs LifeExp by Continent 1952 - 24MID0124",
x = "Population (log scale)", y = "Life Expectancy",
color = "Continent", size = "GDP per Capita") +
theme_minimal()
