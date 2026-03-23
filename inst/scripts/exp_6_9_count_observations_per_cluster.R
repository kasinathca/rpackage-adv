# Required packages:
# install.packages("cluster")

# Title: Count Observations per Cluster
# Aim: To display the number of US states in each cluster using table().
# Procedure: Step-by-Step Execution 1.   Reproduce Full Pipeline: USArrests is loaded, scaled, seed set, K-means run, and cluster labels added as a factor column. 2.   Apply table(): table(KasinathCA$Cluster) counts the number of states assigned to each of the 3 cluster levels. 3.   Interpret Counts: The output shows Cluster 1: 20, Cluster 2: 14, Cluster 3: 16 states, summing to the expected total of 50. 4.   Identify Clusters: Based on crime statistics, Cluster 1 corresponds to high-crime states and Cluster 3 to low-crime states.
# Result: Cluster 1: 20 states (high crime), Cluster 2: 14 states, Cluster 3: 16 states (low crime). Total = 50.

library(cluster)

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA       <- USArrests
usarrests_scaled <- scale(KasinathCA)
set.seed(0124)
kmeans_result    <- kmeans(usarrests_scaled, centers=3, nstart=25)
KasinathCA$Cluster <- as.factor(kmeans_result$cluster)

# table() provides frequency count
cat("States per cluster:\n")
print(table(KasinathCA$Cluster))
