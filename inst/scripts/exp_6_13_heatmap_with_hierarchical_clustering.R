# Required packages:
# install.packages("pheatmap")

# Title: Heatmap with Hierarchical Clustering
# Aim: To generate a heatmap with hierarchical clustering applied to both rows (states) and columns (variables) using pheatmap().
# Procedure: Step-by-Step Execution 1.   Prepare Scaled Data: USArrests is loaded and standardised with scale() so all 4 variables contribute equally to clustering. 2.   Call pheatmap(): pheatmap(usarrests_scaled) is called with cluster_rows=TRUE and cluster_cols=TRUE to enable hierarchical clustering on both axes. 3.   Apply Colour Palette: colorRampPalette(c(navy, white, firebrick))(100) maps low z-score values to navy and high values to dark red. 4.   Interpret Dendrograms: The row dendrogram groups similar states together; high-crime southern states cluster apart from low-crime northern states.
# Result: Hierarchical clustering groups similar states. High-crime southern states cluster apart from low-crime northern states.

library(pheatmap)

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA       <- USArrests
usarrests_scaled <- scale(KasinathCA)

# pheatmap with cluster_rows=TRUE and cluster_cols=TRUE
pheatmap(usarrests_scaled,
main         = "Hierarchical Clustering Heatmap - 24MID0124",
cluster_rows = TRUE,
cluster_cols = TRUE,
color        = colorRampPalette(c("navy","white","firebrick"))(100),
fontsize_row = 6,
fontsize_col = 10,
angle_col    = 45)
