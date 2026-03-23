# Required packages:
# None

# Title: Matrix Element-wise Addition and Multiplication
# Aim: To create a matrix and demonstrate element-wise addition and multiplication with another matrix of the same dimensions.
# Procedure: Step-by-Step Execution Create m1: matrix(1:9, nrow = 3, ncol = 3) fills a 3x3 matrix column-by-column with values 1 through 9. Create m2: matrix(9:1, nrow = 3, ncol = 3) fills a 3x3 matrix column-by-column with values 9 down to 1. Element-wise Addition: m1 + m2 adds corresponding elements from both matrices, producing a matrix where every value equals 10. Element-wise Multiplication: m1 * m2 multiplies corresponding elements from both matrices. Display Results: cat() and print() output each matrix and the results of addition and multiplication.
# Result: Element-wise addition (all 10s) and multiplication were performed on two 3x3 matrices successfully.

# Name: Kasinath C A  Reg No: 24MID0124
m1 <- matrix(1:9, nrow = 3, ncol = 3)
m2 <- matrix(9:1, nrow = 3, ncol = 3)
cat("Matrix m1:\n");       print(m1)
cat("Matrix m2:\n");       print(m2)
cat("Addition (m1+m2):\n"); print(m1 + m2)
cat("Multiplication (m1*m2):\n"); print(m1 * m2)
