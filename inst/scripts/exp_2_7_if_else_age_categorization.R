# Required packages:
# None

# Title: if-else: Age Categorization
# Aim: To write a code snippet using an if-else statement to categorize a person's age into 'Child', 'Teen', 'Adult', or 'Senior'.
# Procedure: Step-by-Step Execution Assign Age: age <- 21 stores the age value to be classified. Check Child: if (age < 13) prints "Child" if the age is below 13. Check Teen: else if (age >= 13 && age <= 17) prints "Teen" for ages 13 to 17. Check Adult: else if (age >= 18 && age <= 59) prints "Adult" for ages 18 to 59, matching age 21. Check Senior: The final else branch handles ages 60 and above, printing "Senior".
# Result: Age 21 correctly categorized as 'Adult' using if-else ladder.

# Name: Kasinath C A  Reg No: 24MID0124
age <- 21
if (age < 13) {
cat("Age", age, "-> Child\n")
} else if (age >= 13 && age <= 17) {
cat("Age", age, "-> Teen\n")
} else if (age >= 18 && age <= 59) {
cat("Age", age, "-> Adult\n")
} else {
cat("Age", age, "-> Senior\n")
}
