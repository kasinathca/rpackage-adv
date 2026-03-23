# Required packages:
# None

# Title: Nested For Loop â€” Multiplication Table (1â€“5)
# Aim: To create a nested for loop to generate a multiplication table for numbers 1 to 5.
# Procedure: Step-by-Step Execution Print Title: cat() outputs a header line before the multiplication table begins. Outer Loop: The outer for loop iterates i from 1 to 5, representing each row of the table. Inner Loop: The inner for loop iterates j from 1 to 5, computing the product i * j for each column. Format Output: sprintf("%4d", i * j) formats each product with fixed width for neat column alignment. New Line: cat("\n") moves to the next line after each row of five products is printed.
# Result: A 5x5 multiplication table was generated using nested for loops.

# Name: Kasinath C A  Reg No: 24MID0124
cat("Multiplication Table (1 to 5)\n")
for (i in 1:5) {
for (j in 1:5) {
cat(sprintf("%4d", i * j))
}
cat("\n")
}
