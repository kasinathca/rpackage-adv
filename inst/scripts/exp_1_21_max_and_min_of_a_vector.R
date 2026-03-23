# Required packages:
# None

# Title: Max and Min of a Vector
# Aim: To write an R program to find the maximum and the minimum value of a given vector.
# Procedure: Step-by-Step Execution Set Seed: set.seed(124) ensures the random sample is reproducible across runs. Create Vector: sample(1:200, 10) randomly selects 10 unique integers from the range 1 to 200. Display Vector: cat() prints all 10 values of the vector to the console. Find Maximum: max() scans the entire vector and returns the largest value. Find Minimum: min() scans the entire vector and returns the smallest value.
# Result: Maximum value = 192 and Minimum value = 9 found using max() and min() functions.

# Name: Kasinath C A  Reg No: 24MID0124
set.seed(124)
KasinathCA <- sample(1:200, 10)
cat("Vector :", KasinathCA, "\n")
cat("Max    :", max(KasinathCA), "\n")
cat("Min    :", min(KasinathCA), "\n")
