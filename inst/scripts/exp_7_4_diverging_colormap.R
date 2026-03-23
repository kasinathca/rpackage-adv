# Required packages:
# install.packages("RColorBrewer")

# Title: Diverging Colormap
# Aim: To create a diverging_palette using RdBu (Red-Blue) scheme and demonstrate it using an image plot.
# Procedure: 1. Create diverging_palette using brewer.pal with 11 levels from "RdBu".2. Create an image plot using a matrix of values ranging from -5 to 5.3. Label X-axis, Y-axis, and add main title with roll number.
# Result: A diverging colormap using the RdBu scheme was successfully created and visualized in R.

library(RColorBrewer)


# 4. Create diverging_palette using RdBu (Red-Blue) scheme
diverging_palette <- brewer.pal(11, "RdBu")

# Create image for diverging colormap demo
image(matrix(seq(-5, 5, length.out = 11), nrow = 1),
col  = diverging_palette,
main = "Diverging Colormap - 24MID0124",
xlab = "X Axis",
ylab = "Y Axis")
