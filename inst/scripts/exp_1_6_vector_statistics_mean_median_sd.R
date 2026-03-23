# Required packages:
# None

# Title: Vector Statistics (Mean, Median, SD)
# Aim: To create a vector of 10 random numbers and calculate the mean, median, and standard deviation.
# Procedure: Step-by-Step Execution Set Seed: set.seed(124) ensures that the random numbers generated are reproducible every time you run the code. Generate Data: runif(10, min = 1, max = 100) creates a vector of 10 uniformly distributed random numbers between 1 and 100. Display Vector: cat() prints the rounded vector values to the console. Compute Mean: mean() calculates the average of all values in the vector. Compute Median: median() finds the middle value when numbers are sorted. Compute SD: sd() calculates how spread out the values are from the mean.
# Result: Mean = 55.798, Median = 62.49, Std Dev = 30.2462 were calculated for the random vector (seed=124).

# Name: Kasinath C A  Reg No: 24MID0124
set.seed(124)
KasinathCA <- runif(10, min = 1, max = 100)
cat("Vector  :", round(KasinathCA, 2), "\n")
cat("Mean    :", round(mean(KasinathCA), 4), "\n")
cat("Median  :", round(median(KasinathCA), 4), "\n")
cat("Std Dev :", round(sd(KasinathCA), 4), "\n")
