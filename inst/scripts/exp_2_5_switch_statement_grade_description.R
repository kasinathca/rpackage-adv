# Required packages:
# None

# Title: Switch Statement â€” Grade Description
# Aim: To write a switch statement that takes a variable 'grade' and prints 'Excellent', 'Good', 'Average', or 'Poor' based on its value.
# Procedure: Step-by-Step Execution Assign Grade: grade <- "A" stores the grade value to be evaluated by the switch. Evaluate Switch: switch(grade, ...) matches the value of grade against the defined cases. Return Description: The matching case "A" returns "Excellent", which is stored in result. Display Output: cat() prints the grade and its description in the format "Grade A -> Excellent".
# Result: Switch statement correctly mapped grade 'A' to 'Excellent'.

# Name: Kasinath C A  Reg No: 24MID0124
grade  <- "A"
result <- switch(grade,
"A" = "Excellent",
"B" = "Good",
"C" = "Average",
"D" = "Poor"
)
cat("Grade", grade, "->", result, "\n")
