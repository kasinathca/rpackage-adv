# Required packages:
# install.packages("pheatmap")

# Title: Plot Correlation Heatmap
# Aim: To plot a correlation heatmap. Red = negative correlation, green = positive correlation.
# Procedure: Step-by-Step Execution 1.   Load Libraries: pheatmap is loaded along with the dataset; cor(KasinathCA) computes the 4x4 correlation matrix. 2.   Call pheatmap(): pheatmap(corr_matrix) creates the heatmap using the correlation matrix as input data. 3.   Set Colour Gradient: colorRampPalette(c(red, white, green))(50) defines a 50-step colour scale from red (negative) through white (zero) to green (positive). 4.   Display Numbers: display_numbers=TRUE overlays correlation values on each cell; number_format = %.2f formats them to 2 decimal places.
# Result: Heatmap plotted. Strong positive correlations (green) between Murder-Assault and Assault-Rape. UrbanPop weakly correlated.

library(pheatmap)

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA  <- USArrests
corr_matrix <- cor(KasinathCA)

pheatmap(corr_matrix,
main            = "Correlation Heatmap - 24MID0124",
color           = colorRampPalette(c("red","white","green"))(50),
display_numbers = TRUE,
number_format   = "%.2f",
fontsize_number = 10)
