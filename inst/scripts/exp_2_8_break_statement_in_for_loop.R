# Required packages:
# None

# Title: Break Statement in For Loop
# Aim: To use the break statement in a loop to exit when a specific condition is met. Provide an example with a for loop.
# Procedure: Step-by-Step Execution Start Loop: The for loop iterates i from 1 to 20. Check Condition: if (i == 10) evaluates whether the current value equals 10. Print and Break:When iis 10, cat() prints the break message and the break statement exits the loop immediately. Default Print: For all values before 10, cat() prints the number followed by a space. Loop Terminates: Execution stops at i = 10; values 10 through 20 are never reached.
# Result: For loop exited at i = 10 using the break statement. Numbers 1 to 9 were printed before the loop broke.

# Name: Kasinath C A  Reg No: 24MID0124
for (i in 1:20) {
if (i == 10) {
cat("\nBreaking at i =", i, "\n")
break
}
cat(i, " ")
}
