# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")
# install.packages("ggplot2")

# Title: Scatter: pop vs gdpPercap with Log Scale (1952)
# Aim: To visualize gapminder_1952 scatter plot of pop vs gdpPercap with both x and y axes on log10 scale.
# Procedure: Step-by-Step Execution 1.   Prepare Data: gapminder is filtered to year 1952 and stored in KasinathCA. 2.   Initialize Plot: ggplot maps pop to x and gdpPercap to y; geom_point() renders each country as a tomato-coloured dot. 3.   Apply Log Scales: scale_x_log10() and scale_y_log10() transform both axes to base-10 logarithmic scale, spreading skewed data. 4.   Label the Plot: labs() sets descriptive axis titles noting the log scale; theme_minimal() styles the output.
# Result: Log10 scale on both axes spreads points evenly and reduces outlier dominance. A clearer linear pattern emerges.

library(dplyr)
library(gapminder)
library(ggplot2)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>% filter(year == 1952)

ggplot(KasinathCA, aes(x = pop, y = gdpPercap)) +
geom_point(color = "tomato", size = 2) +
scale_x_log10() +
scale_y_log10() +
labs(title = "Pop vs GdpPercap Log Scale 1952 - 24MID0124",
x = "Population (log10)", y = "GDP per Capita (log10)") +
theme_minimal()
