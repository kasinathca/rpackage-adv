# Required packages:
# install.packages("RColorBrewer")

# Title: Categorical Colormap
# Aim: To create a categorical_palette for 3-category mapping including NA values and demonstrate it using a barplot.
# Procedure: 1. Define a categorical_palette using brewer.pal with 3 colors from "Set1" and add grey for NA.2. Create a barplot with 4 bars (3 categories + NA) using the categorical palette.3. Label X-axis, Y-axis, and add main title with roll number.
# Result: A categorical colormap with NA handling was successfully created and demonstrated using a barplot in R.

library(RColorBrewer)


# 2. Create categorical_palette for 3-category mapping including NA values
categorical_palette <- c(brewer.pal(3, "Set1"), "grey")

# Create barplot for categorical colormap demonstration
barplot(c(1, 2, 3, NA),
col       = categorical_palette,
main      = "Categorical Colormap - 24MID0124",
xlab      = "Category",
ylab      = "Value",
names.arg = c("Cat A", "Cat B", "Cat C", "NA"))
