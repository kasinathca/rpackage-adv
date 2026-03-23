# Required packages:
# None

# Title: 5x5 Matrix â€” Row and Column Extraction
# Aim: To generate a 5x5 matrix with numbers 1 to 25, then extract the third row and the second column.
# Procedure: Step-by-Step Execution Generate a Matrix: The matrix(1:25, nrow = 5, ncol = 5) function creates a 5x5 grid using the numbers 1 through 25. By default, R fills this grid column by column. Store the Matrix: The grid is saved into the variable KasinathCA. Display the Matrix: The print() function outputs the full 5x5 table to the console. Extract a Row: The code KasinathCA[3, ] looks at the 3rd row. Leaving the space after the comma blank tells R to select all columns for that specific row. Extract a Column: The code KasinathCA[, 2] looks at the 2nd column. Leaving the space before the comma blank tells R to select all rows for that specific column. Print Results: The cat() functions display these extracted slices (the 3rd row and 2nd column) clearly in the console.
# Result: A 5x5 matrix (1-25) was created. Third row [3,8,13,18,23] and second column [6,7,8,9,10] were extracted.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- matrix(1:25, nrow = 5, ncol = 5)
print(KasinathCA)
cat("Third row   :", KasinathCA[3, ], "\n")
cat("Second column:", KasinathCA[, 2], "\n")
