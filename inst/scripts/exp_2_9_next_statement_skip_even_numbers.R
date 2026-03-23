# Required packages:
# None

# Title: Next Statement â€” Skip Even Numbers
# Aim: To write a code snippet using the next statement to skip even numbers in a loop from 1 to 10.
# Procedure: Step-by-Step Execution Print Header: cat() outputs a title line before the loop begins. Start Loop: The for loop iterates i from 1 to 10. Skip Even Numbers: if (i %% 2 == 0) next skips the rest of the loop body for any even value of i. Print Odd Numbers: For odd values of i, cat() prints the number followed by a space.
# Result: Even numbers skipped using next. Only odd numbers (1 3 5 7 9) from 1 to 10 were printed.

# Name: Kasinath C A  Reg No: 24MID0124
cat("Odd numbers from 1 to 10:\n")
for (i in 1:10) {
if (i %% 2 == 0) next   # skip even numbers
cat(i, " ")
}
