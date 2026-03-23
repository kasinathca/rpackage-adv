# Required packages:
# None

# Title: 3D Array Creation
# Aim: To create a 3-dimensional array in R with dimensions 3x3x3, fill it with random numbers and display the array.
# Procedure: Set Reproducibility: set.seed(124) ensures that the "random" numbers generated are the same every time you run the code. Generate Data: sample(1:100, 27, replace = TRUE) picks 27 random numbers between 1 and 100. Build Array: array(..., dim = c(3, 3, 3)) organizes those 27 numbers into a 3x3x3 structure (3 layers, each with 3 rows and 3 columns). Store Variable: Saves this structure into the variable KasinathCA. Print Header: cat() prints the title and your registration number to the console. Display Results: print(KasinathCA) shows the three 3x3 matrices in the output.
# Result: A 3x3x3 array was successfully created with random numbers using set.seed(124) and displayed.

# Name: Kasinath C A  Reg No: 24MID0124
set.seed(124)
KasinathCA <- array(sample(1:100, 27, replace = TRUE), dim = c(3, 3, 3))
cat("3x3x3 Array - 24MID0124\n")
print(KasinathCA)
