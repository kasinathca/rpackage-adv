# Required packages:
# None

# Title: if-else: Positive / Negative / Zero
# Aim: To write a code snippet using an if-else statement to check if a number is positive, negative, or zero.
# Procedure: Step-by-Step Execution Assign Value: num <- 124 stores the number to be tested in the variable num. Check Positive: The first if condition (num > 0) evaluates to TRUE for 124, so it prints "124 is Positive". Check Negative: The else if (num < 0) branch would execute if the number were negative. Check Zero: The else branch handles the case where num equals exactly zero.
# Result: The number 124 was correctly identified as Positive using an if-else statement.

# Name: Kasinath C A  Reg No: 24MID0124
num <- 124
if (num > 0) {
cat(num, "is Positive\n")
} else if (num < 0) {
cat(num, "is Negative\n")
} else {
cat("The number is Zero\n")
}
