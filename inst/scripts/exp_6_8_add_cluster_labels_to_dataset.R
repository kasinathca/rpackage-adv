# Required packages:
# install.packages("cluster")

# Title: Add Cluster Labels to Dataset
# Aim: To add K-means cluster labels to the original USArrests dataset as a categorical (factor) variable.
# Procedure: Step-by-Step Execution 1.   Reproduce Clustering: USArrests is loaded, scaled, seed is set, and K-means runs with centers=3, nstart=25 to get cluster assignments. 2.   Extract Cluster IDs: kmeans_result$cluster returns a named vector of cluster numbers (1, 2, or 3) for each of the 50 states. 3.   Convert to Factor: as.factor() wraps the numeric IDs so R treats them as discrete categories rather than continuous numbers. 4.   Append to Dataset: KasinathCA$Cluster <- stores the factor column back into the data frame; print(head()) confirms the new column.
# Result: Cluster labels added as a factor. Each of the 50 states now has a cluster assignment (1, 2, or 3).

library(cluster)

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA       <- USArrests
usarrests_scaled <- scale(KasinathCA)
set.seed(0124)
kmeans_result    <- kmeans(usarrests_scaled, centers=3, nstart=25)

# as.factor() treats cluster IDs as categories, not numbers
KasinathCA$Cluster <- as.factor(kmeans_result$cluster)

print(head(KasinathCA))
