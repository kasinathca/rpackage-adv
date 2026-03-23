# Required packages:
# None

# Title: User-Defined Function â€” Add 3 Variables
# Aim: To write an R program to add 3 variables using a user-defined function.
# Procedure: Step-by-Step Execution Define Function: function(a, b, c) creates a user-defined function named KasinathCA that accepts three numeric parameters. Return Statement: return(a + b + c) computes and returns the sum of the three input values. Call Function: KasinathCA(124, 200, 300) invokes the function with specific arguments and stores the result. Display Output: cat() prints the computed sum (624) with a descriptive label to the console.
# Result: User-defined function KasinathCA(a,b,c) created. KasinathCA(124, 200, 300) returned 624.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- function(a, b, c) {
return(a + b + c)
}
result <- KasinathCA(124, 200, 300)
cat("Sum of 124 + 200 + 300 =", result, "\n")
