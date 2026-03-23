# Required packages:
# None

# Title: Named List â€” $ Operator Access
# Aim: To create a list with named elements: Name, Age, and Occupation. Access the element 'Occupation' using the $ operator.
# Procedure: Step-by-Step Execution Create Named List: list() creates a container named KasinathCA with three named elements: Name, Age, and Occupation. Access with $: The $ operator retrieves the value of a specific named element directly by its label. Display Output: cat() prints the accessed element value (Occupation: Student) to the console.
# Result: A named list was created. The 'Occupation' element was accessed using the $ operator and printed successfully.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- list(Name = "Kasinath C A", Age = 21, Occupation = "Student")
cat("Occupation:", KasinathCA$Occupation, "\n")
