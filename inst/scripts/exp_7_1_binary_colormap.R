# Required packages:
# install.packages("ggplot2")
# install.packages("RColorBrewer")
# install.packages("scales")

# Title: Binary Colormap
# Aim: To create a binary_palette object for a two-color scheme and demonstrate it using a barplot.
# Procedure: 1. Install and load RColorBrewer, scales, and ggplot2 packages.2. Define a binary_palette with two colors (black and white).3. Create a barplot using the binary_palette to visualize the two-color scheme.4. Label X-axis, Y-axis, and add main title with roll number.
# Result: A binary colormap was successfully created and visualized using a barplot in R.  s

library(ggplot2)
library(RColorBrewer)
library(scales)

# Install and load required packages

# 1. Create binary_palette object for two-color scheme
binary_palette <- c("black", "white")

# Create barplot to demonstrate binary colormap
barplot(c(1, 2),
col   = binary_palette,
main  = "Binary Colormap - 24MID0124",
xlab  = "Category",
ylab  = "Value",
names.arg = c("Class 0", "Class 1"))
