# Required packages:
# install.packages("dplyr")
# install.packages("gapminder")
# install.packages("ggplot2")

# Title: Bar Plot: Continent vs MedianGdpPercap
# Aim: To visualize by_continent as a bar/column plot of continent vs MedianGdpPercap.
# Procedure: Step-by-Step Execution 1.   Compute Summary Data: gapminder is filtered to 1952, grouped by continent, and summarized to get MedianGdpPercap per continent. 2.   Map Aesthetics: ggplot maps continent to x, MedianGdpPercapto y, and continent to fill colour for distinct bar colours. 3.   Draw Bars: geom_col() renders the pre-computed summary values as bars (unlike geom_bar() which counts rows). 4.   Label and Style: labs() sets the title and axis names; theme_minimal() produces a clean chart without a grey background.
# Result: Bar chart shows clear GDP inequality across continents in 1952. Oceania leads; Africa has the lowest median GDP.

library(dplyr)
library(gapminder)
library(ggplot2)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- gapminder %>%
filter(year == 1952) %>%
group_by(continent) %>%
summarize(MedianGdpPercap = median(gdpPercap), .groups = "drop")

ggplot(KasinathCA, aes(x = continent, y = MedianGdpPercap, fill = continent)) +
geom_col() +
labs(title = "Median GdpPercap by Continent 1952 - 24MID0124",
x = "Continent", y = "Median GDP per Capita") +
theme_minimal()
