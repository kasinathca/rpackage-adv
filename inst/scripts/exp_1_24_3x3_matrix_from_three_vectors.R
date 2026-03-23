# Required packages:
# None

# Title: 3x3 Matrix from Three Vectors
# Aim: To create three vectors a, b, c with 3 integers each. Combine them to form a 3x3 matrix where each column represents a vector.
# Procedure: Step-by-Step Execution Define Vectors: Three integer vectors a, b, and c are created, each containing 3 elements. Combine Column-wise: cbind(a, b, c) binds the three vectors side by side to form a 3x3 matrix. Store Matrix: The resulting 3x3 matrix is saved into the variable KasinathCA. Display Output: print() outputs the full matrix with column labels (a, b, c) and row index numbers.
# Result: Three vectors combined column-wise using cbind() to form a 3x3 matrix.

# Name: Kasinath C A  Reg No: 24MID0124
a <- c(1, 2, 4)
b <- c(5, 1, 2)
c <- c(4, 8, 0)
KasinathCA <- cbind(a, b, c)
print(KasinathCA)
