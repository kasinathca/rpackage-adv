# Required packages:
# None

# Title: For Loop â€” Multiply Each Element by 2
# Aim: To create a for loop that iterates over a vector of numbers and prints each number multiplied by 2.
# Procedure: Step-by-Step Execution Create Vector: c(10, 20, 30, 40, 50) defines a numeric vector of five values stored in vec. Start Loop: The for loop iterates over each element in vec, assigning each value to val in turn. Multiply Each Value: Inside the loop, val * 2 computes double the current element. Display Result: cat() prints each original value alongside its doubled result in the format "val x 2 = result".
# Result: For loop iterated over the vector. Each element was multiplied by 2 and printed successfully.

# Name: Kasinath C A  Reg No: 24MID0124
vec <- c(10, 20, 30, 40, 50)
for (val in vec) {
cat(val, "x 2 =", val * 2, "\n")
}
