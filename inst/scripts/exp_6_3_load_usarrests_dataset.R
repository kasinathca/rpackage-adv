# Required packages:
# install.packages("ggplot2")
# install.packages("reshape2")

# Title: Load USArrests Dataset
# Aim: To load the built-in USArrests dataset and inspect its structure.
# Procedure: Step-by-Step Execution 1.   Load Libraries: All five required libraries (ggplot2, cluster, factoextra, reshape2, pheatmap) are loaded into the R session. 2.   Assign Dataset: USArrests, a built-in R dataset, is stored into KasinathCA using the assignment operator. 3.   Check Dimensions: cat(Dimensions:, dim(KasinathCA)) prints the number of rows (50) and columns (4). 4.   Inspect Structure: str(KasinathCA) reveals the data frame has 50 observations of 4 numeric variables: Murder, Assault, UrbanPop, and Rape.
# Result: USArrests loaded. 50 rows (US states) x 4 columns (Murder, Assault, UrbanPop, Rape).

library(ggplot2)
library(reshape2)

# Name: Kasinath C A  Reg No: 24MID0124

KasinathCA <- USArrests
cat("Dimensions:", dim(KasinathCA), "\n")
str(KasinathCA)
