# Required packages:
# None

# Title: Insert New Row into 3x3 Matrix
# Aim: For the 3x3 matrix from Q24, insert a new row with 3 elements.
# Procedure: Step-by-Step Execution Rebuild Original Matrix: The same cbind(a, b, c) operation from Q24 recreates the 3x3 matrix. Define New Row: c(7, 3, 6) creates a new row vector with three values to be inserted. Append Row: rbind(KasinathCA, new_row) binds the new row beneath the existing matrix, expanding it to 4x3. Display Output: print() outputs the updated 4x3 matrix with the new row labeled "new_row".
# Result: New row (7, 3, 6) inserted into 3x3 matrix using rbind(). Result is a 4x3 matrix.

# Name: Kasinath C A  Reg No: 24MID0124
a <- c(1, 2, 4)
b <- c(5, 1, 2)
c <- c(4, 8, 0)
KasinathCA <- cbind(a, b, c)
new_row    <- c(7, 3, 6)
KasinathCA <- rbind(KasinathCA, new_row)
print(KasinathCA)
