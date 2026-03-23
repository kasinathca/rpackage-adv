# Required packages:
# None

# Title: For Loop â€” Factorial of a Number
# Aim: To create a for loop to calculate the factorial of a given number.
# Procedure: Step-by-Step Execution Set Input: n <- 6 defines the number whose factorial is to be computed. Initialize Accumulator: factorial_n <- 1 sets the starting product value before multiplication begins. Compute Factorial: The for loop iterates i from 1 to n, multiplying factorial_n by i on each step. Display Result: cat() prints the final computed factorial value (720) with a descriptive label.
# Result: Factorial of 6 = 720 calculated correctly using a for loop.

# Name: Kasinath C A  Reg No: 24MID0124
n           <- 6
factorial_n <- 1
for (i in 1:n) {
factorial_n <- factorial_n * i
}
cat("Factorial of", n, "=", factorial_n, "\n")
