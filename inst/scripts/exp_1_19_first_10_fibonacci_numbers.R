# Required packages:
# None

# Title: First 10 Fibonacci Numbers
# Aim: To write an R program to get the first 10 Fibonacci numbers.
# Procedure: Step-by-Step Execution Initialize Vector: numeric(10) creates a zero-filled vector of length 10 to store the Fibonacci sequence. Set Base Cases: KasinathCA[1] is set to 0 and KasinathCA[2] is set to 1 as the starting values. Build Sequence: A for loop from index 3 to 10 computes each value as the sum of the two preceding values. Display Output: cat() prints all 10 Fibonacci numbers in a single line to the console.
# Result: First 10 Fibonacci numbers (0 1 1 2 3 5 8 13 21 34) generated successfully.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA    <- numeric(10)
KasinathCA[1] <- 0
KasinathCA[2] <- 1
for (i in 3:10) {
KasinathCA[i] <- KasinathCA[i-1] + KasinathCA[i-2]
}
cat("First 10 Fibonacci numbers:", KasinathCA, "\n")
