# Required packages:
# None

# Title: Vector â€” Sort and Rank
# Aim: To create a numeric vector with 10 elements, sort in ascending and descending order, and find the rank of each number.
# Procedure: Step-by-Step Execution Set Seed: set.seed(124) ensures the random numbers generated are the same every time. Create Vector: sample(10:99, 10) picks 10 unique random integers from 10 to 99. Sort Ascending: sort(KasinathCA) arranges the vector values from smallest to largest. Sort Descending: sort(KasinathCA, decreasing = TRUE) arranges values from largest to smallest. Assign Ranks: rank(KasinathCA) assigns each element a rank based on its relative position in sorted order.
# Result: Vector sorted in ascending and descending order. Ranks assigned successfully.

# Name: Kasinath C A  Reg No: 24MID0124
set.seed(124)
KasinathCA <- sample(10:99, 10)
cat("Original  :", KasinathCA, "\n")
cat("Ascending :", sort(KasinathCA), "\n")
cat("Descending:", sort(KasinathCA, decreasing = TRUE), "\n")
cat("Rank      :", rank(KasinathCA), "\n")
