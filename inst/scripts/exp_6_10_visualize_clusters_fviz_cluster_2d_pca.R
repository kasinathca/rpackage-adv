# Required packages:
# install.packages("cluster")
# install.packages("factoextra")
# install.packages("ggplot2")

# Title: Visualize Clusters â€” fviz_cluster 2D PCA
# Aim: To visualize the K-means clusters in 2D using fviz_cluster(), which applies PCA internally to reduce 4 dimensions to 2.
# Procedure: Step-by-Step Execution 1.   Load factoextra: library(factoextra) is loaded to access the fviz_cluster() visualisation function. 2.   Reproduce Pipeline: USArrests is loaded, standardised, seed set to 0124, and K-means (centers=3, nstart=25) is applied. 3.   Run fviz_cluster(): The function internally applies PCA to reduce the 4-dimensional scaled data to 2 principal components for plotting. 4.   Interpret 2D Plot: ellipse.type = convex draws convex hulls around each cluster; the three groups appear visually separated on the PCA axes.
# Result: fviz_cluster() uses PCA to produce a 2D view of 4 variables. Three clusters are visually distinct with clear separation.

library(cluster)
library(factoextra)
library(ggplot2)

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA       <- USArrests
usarrests_scaled <- scale(KasinathCA)
set.seed(0124)
kmeans_result    <- kmeans(usarrests_scaled, centers=3, nstart=25)

# fviz_cluster uses PCA to reduce 4D data to 2D for visualization
fviz_cluster(kmeans_result,
data         = usarrests_scaled,
geom         = "point",
ellipse.type = "convex",
ggtheme      = theme_minimal(),
main         = "K-means Clusters (k=3) - 24MID0124")
