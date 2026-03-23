# Required packages:
# None

# Title: Multi-plot Layout (2Ã—2) â€“ All Colormaps
# Aim: To set up a 2Ã—2 plotting layout and display all four colormaps (Binary, Categorical, Sequential, Diverging) together.
# Procedure: 1. Use par(mfrow=c(2,2)) to set up the 2Ã—2 layout with custom margins.2. Plot Binary colormap panel.3. Plot Categorical colormap panel.4. Plot Sequential colormap panel.5. Plot Diverging colormap panel.6. Reset layout to single plot using par(mfrow=c(1,1)).
# Result: All four colormaps were successfully arranged in a 2Ã—2 multiplot layout using par(mfrow=c(2,2)) in R.    Experiment 8 Geo-spatial Data Visualization CO2 BT3 CO2: Relate the visualization towards the problem based on the dataset to analyze and bring out valuable insight on large dataset.

# Set up 2x2 plotting layout with custom margins
par(mfrow = c(2, 2), mar = c(4, 4, 3, 1))

# Binary colormap panel in multiplot
barplot(c(1, 2), col = binary_palette,
main = "Binary - 24MID0124",
xlab = "Category", ylab = "Value",
names.arg = c("Class 0", "Class 1"))

# Categorical colormap panel in multiplot
barplot(c(1, 2, 3, NA), col = categorical_palette,
main = "Categorical - 24MID0124",
xlab = "Category", ylab = "Value",
names.arg = c("Cat A", "Cat B", "Cat C", "NA"))

# Sequential colormap panel in multiplot
image(matrix(1:9, nrow = 3), col = sequential_palette,
main = "Sequential - 24MID0124",
xlab = "X Axis", ylab = "Y Axis")

# Diverging colormap panel in multiplot
image(matrix(seq(-5, 5, length.out = 11), nrow = 1),
col  = diverging_palette,
main = "Diverging - 24MID0124",
xlab = "X Axis", ylab = "Y Axis")

# Reset layout
par(mfrow = c(1, 1))
