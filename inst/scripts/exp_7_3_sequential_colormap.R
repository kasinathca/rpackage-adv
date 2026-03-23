# Required packages:
# install.packages("RColorBrewer")

# Title: Sequential Colormap
# Aim: To create a sequential_palette using Brewer grayscale and demonstrate it using an image plot.
# Procedure: 1. Create sequential_palette using brewer.pal with 9 levels from "Greys".2. Create an image plot using a 3x3 matrix and the sequential palette.3. Label X-axis, Y-axis, and add main title with roll number.
# Result: A sequential colormap using Brewer grayscale was successfully created and visualized using an image plot in R.

library(RColorBrewer)

# 3. Create sequential_palette using Brewer grayscale
sequential_palette <- brewer.pal(9, "Greys")

# Create image plot for sequential colormap demo
image(matrix(1:9, nrow = 3),
col  = sequential_palette,
main = "Sequential Colormap - 24MID0124",
xlab = "X Axis",
ylab = "Y Axis")
