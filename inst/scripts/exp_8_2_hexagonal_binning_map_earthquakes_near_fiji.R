# Required packages:
# install.packages("ggplot2")
# install.packages("hexbin")

# Title: Hexagonal Binning Map â€“ Earthquakes near Fiji
# Aim: To create a hexagonal binning map using the built-in quakes dataset of earthquakes near Fiji.
# Procedure: 1. Load the in-built quakes dataset.2. Use ggplot2 with geom_hex() to create a hexagonal binning map.3. Apply viridis color scale for density representation.4. Label X-axis, Y-axis, and add main title with roll number.
# Result: A hexagonal binning map was successfully created using the quakes dataset in R, revealing spatial clustering of seismic activity near Fiji.

library(ggplot2)
library(hexbin)

# Load in-built quakes dataset (earthquakes near Fiji)
data("quakes")

# Create hexagonal binning map
ggplot(quakes, aes(x = long, y = lat)) +
geom_hex(bins = 30) +
scale_fill_viridis_c() +
ggtitle("Hexagonal Binning Map - Earthquakes near Fiji - 24MID0124") +
xlab("Longitude") + ylab("Latitude")
