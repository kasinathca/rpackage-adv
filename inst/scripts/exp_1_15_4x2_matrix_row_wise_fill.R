# Required packages:
# None

# Title: 4x2 Matrix â€” Row-wise Fill
# Aim: To construct and store a 4x2 matrix filled row-wise with the values: 4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, and 6.5.
# Procedure: Step-by-Step Execution Define Values: The c() function collects 8 numeric values (4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5) into a vector. Build Matrix: matrix() with nrow = 4, ncol = 2, and byrow = TRUE fills the 4x2 grid row by row from left to right. Store Result: The completed matrix is saved into the variable KasinathCA. Display Output: print() outputs the 4x2 matrix with row and column index labels to the console.
# Result: A 4x2 matrix was constructed and filled row-wise with the specified 8 values successfully.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5),
nrow = 4, ncol = 2, byrow = TRUE)
print(KasinathCA)
