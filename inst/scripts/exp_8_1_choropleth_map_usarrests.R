# Required packages:
# install.packages("dplyr")
# install.packages("ggplot2")
# install.packages("maps")
# install.packages("viridis")

# Title: Choropleth Map â€“ USArrests
# Aim: To create Choropleth maps showing US state-level Assault rates using standard and reversed viridis color scales.
# Procedure: 1. Load ggplot2, maps, and dplyr packages.2. Load USArrests dataset and create arrests object with lowercase region names.3. Extract US state boundary polygons into states_map.4. Create blank USA outline map with lightblue fill and white borders.5. Merge states_map with arrests data using region as key.6. Define custom reverse_scale function.7. Generate choropleth map with reversed viridis scale (dark = high assault).8. Generate choropleth map with standard viridis scale (light = high assault).
# Result: Choropleth maps were successfully created using the USArrests dataset with both standard and reversed viridis color scales in R.

library(dplyr)
library(ggplot2)
library(maps)
library(viridis)


# Load necessary packages for Geo-Spatial Visualization

# Load built-in USArrests dataset
data("USArrests")

# Create arrests object and add lowercase region names for map join
arrests <- USArrests
arrests$region <- tolower(rownames(USArrests))

# Extract US state boundary polygons
states_map <- map_data("state")

# Create blank USA outline map
ggplot(states_map, aes(x = long, y = lat, group = group)) +
geom_polygon(fill = "lightblue", color = "white") +
ggtitle("USA Outline Map - 24MID0124") +
xlab("Longitude") + ylab("Latitude")

# Merge state boundary polygons with arrest statistics
merged_data <- left_join(states_map, arrests, by = "region")

# Define custom function reverse_scale
reverse_scale <- function(palette_func) {
function(n) rev(palette_func(n))
}

# Choropleth map with REVERSED viridis (dark = high assault)
ggplot(merged_data, aes(x = long, y = lat, group = group, fill = Assault)) +
geom_polygon(color = "white") +
scale_fill_gradientn(colours = rev(viridis::viridis(100))) +
ggtitle("Assault Rates - Reversed Viridis - 24MID0124") +
xlab("Longitude") + ylab("Latitude")

# Choropleth map with STANDARD viridis (light = high assault)
ggplot(merged_data, aes(x = long, y = lat, group = group, fill = Assault)) +
geom_polygon(color = "white") +
scale_fill_viridis_c() +
ggtitle("Assault Rates - Standard Viridis - 24MID0124") +
xlab("Longitude") + ylab("Latitude")
