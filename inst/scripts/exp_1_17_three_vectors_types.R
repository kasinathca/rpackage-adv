# Required packages:
# None

# Title: Three Vectors â€” Types
# Aim: To create three vectors (numeric, character, logical), display their content and their data types.
# Procedure: Step-by-Step Execution Create Numeric Vector: c(1.1, 2.2, 3.3, 4.4, 5.5) stores five decimal numbers in numeric_data. Create Character Vector: c("Kasinath", "VIT", "R", "Data", "Visualization") stores five text strings in char_data. Create Logical Vector: c(TRUE, FALSE, TRUE, TRUE, FALSE) stores five boolean values in logical_data. Display Each Vector: cat() prints the content of each vector alongside its data type retrieved using class().
# Result: Three vectors of numeric, character, and logical types created. Content and types displayed successfully.

# Name: Kasinath C A  Reg No: 24MID0124
numeric_data <- c(1.1, 2.2, 3.3, 4.4, 5.5)
char_data    <- c("Kasinath", "VIT", "R", "Data", "Visualization")
logical_data <- c(TRUE, FALSE, TRUE, TRUE, FALSE)

cat("Numeric  :", numeric_data, " | Type:", class(numeric_data), "\n")
cat("Character:", char_data,    " | Type:", class(char_data),    "\n")
cat("Logical  :", logical_data, " | Type:", class(logical_data), "\n")
