# Required packages:
# install.packages("cluster")

# Title: Apply K-means Clustering (k=3)
# Aim: To apply K-means clustering to usarrests_scaled with centers=3 and nstart=25.
# Procedure: Step-by-Step Execution 1.   Prepare Scaled Data: USArrests is loaded, scaled with scale(), and set.seed(0124) is called to ensure reproducibility. 2.   Run K-means: kmeans(usarrests_scaled, centers=3, nstart=25) partitions 50 states into 3 clusters with 25 random initialisations. 3.   Multiple Starts: nstart=25 runs K-means 25 times and retains the solution with the lowest total within-cluster sum of squares. 4.   Inspect Results: kmeans_result$size prints cluster sizes (20, 14, 16) and tot.withinss reports the within-cluster sum of squares (46.74).
# Result: K-means (k=3) applied. Three clusters formed: 20, 14, and 16 states. Total within-SS = 46.74.

library(cluster)

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA       <- USArrests
usarrests_scaled <- scale(KasinathCA)
set.seed(0124)

# kmeans: centers=3 clusters, nstart=25 for stable solution
kmeans_result <- kmeans(usarrests_scaled, centers=3, nstart=25)

cat("Cluster sizes:\n")
print(kmeans_result$size)
cat("Total within-cluster SS:", round(kmeans_result$tot.withinss,2),"\n")
