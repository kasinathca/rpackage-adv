# Required packages:
# install.packages("ggplot2")
# install.packages("maps")

# Title: Dot Map â€“ US Cities (Population > 100,000)
# Aim: To create a dot map of US cities with population greater than 100,000, excluding Alaska and Hawaii.
# Procedure: 1. Load US cities data from the maps package.2. Filter cities with population greater than 100,000 and exclude Alaska (AK) and Hawaii (HI).3. Get the US state map as base layer.4. Use geom_point() to plot city locations, sized by population.5. Label X-axis, Y-axis, and add main title with roll number.
# Result: A dot map was successfully created using US cities data, highlighting population distribution across the contiguous United States.     Experiment 9 Financial Time Series Analysis CO3 BT3 CO3: Design visualization dashboard to support the decision making on large scale data.

library(ggplot2)
library(maps)

# Load US cities data
data("us.cities", package = "maps")

# Filter: population > 100,000, exclude Alaska and Hawaii
large_cities <- us.cities[us.cities$pop > 100000 &
us.cities$country.etc != "AK" &
us.cities$country.etc != "HI", ]

# US base map
us_map <- map_data("state")

# Create dot map
ggplot() +
geom_polygon(data = us_map,
aes(x = long, y = lat, group = group),
fill = "lightgrey", color = "white") +
geom_point(data = large_cities,
aes(x = long, y = lat, size = pop),
color = "red", alpha = 0.5) +
scale_size_continuous(name = "Population") +
ggtitle("US Cities Dot Map (Pop > 100,000) - 24MID0124") +
xlab("Longitude") + ylab("Latitude")

