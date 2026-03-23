# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")
# install.packages("ggplot2")

# Title: Scatter: pop vs lifeExp â€” Facet by Year
# Aim: For the full gapminder dataset, plot pop vs lifeExp scatter with facet_wrap() for each year.
# Procedure: Step-by-Step Execution 1.   Use Full Dataset: The complete gapminder dataset (all years) is passed directly to ggplot without prior filtering. 2.   Map Aesthetics: pop is mapped to x and lifeExp to y; geom_point() with alpha=0.5 and size=0.8 handles the large dataset. 3.   Apply Log Scale: scale_x_log10() normalises the wide range of population values across all years. 4.   Facet by Year: facet_wrap(~ year) creates 12 panels (1952 to 2007), each showing one 5-year snapshot of global health trends.
# Result: 12 facet panels (1952-2007) clearly show life expectancy rising progressively over each 5-year period globally.

library(dplyr)
library(gapminder)
library(ggplot2)

# Name: Kasinath C A  Reg No: 24MID0124

ggplot(gapminder, aes(x = pop, y = lifeExp)) +
geom_point(color = "purple", alpha = 0.5, size = 0.8) +
scale_x_log10() +
facet_wrap(~ year) +
labs(title = "Pop vs LifeExp Faceted by Year - 24MID0124",
x = "Population (log scale)", y = "Life Expectancy") +
theme_minimal()
