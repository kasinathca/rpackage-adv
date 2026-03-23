# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")
# install.packages("ggplot2")

# Title: Scatter: pop vs lifeExp â€” Facet by Continent (1952)
# Aim: For gapminder_1952, plot pop vs lifeExp scatter with facet_wrap() sub-panels for each continent.
# Procedure: Step-by-Step Execution 1.   Prepare Data: gapminder is filtered to year 1952 and stored in KasinathCA. 2.   Map Base Aesthetics: ggplot maps pop to x and lifeExp to y; geom_point() with alpha=0.7 draws semi-transparent points. 3.   Apply Log Scale: scale_x_log10() transforms the population axis for readability across all continents. 4.   Add Faceting: facet_wrap(~ continent) splits the plot into 5 separate panels, one per continent, sharing the same axes.
# Result: facet_wrap(~continent) creates 5 separate panels. Useful for comparing pop-lifeExp trends within each continent.

library(dplyr)
library(gapminder)
library(ggplot2)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>% filter(year == 1952)

ggplot(KasinathCA, aes(x = pop, y = lifeExp)) +
geom_point(color = "steelblue", alpha = 0.7) +
scale_x_log10() +
facet_wrap(~ continent) +
labs(title = "Pop vs LifeExp by Continent Facet 1952 - 24MID0124",
x = "Population (log scale)", y = "Life Expectancy") +
theme_minimal()
