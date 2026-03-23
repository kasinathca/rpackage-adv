# Required packages:
# None

# Title: Employee Dataframe â€” Summary
# Aim: To create a dataframe containing details of 10 employees and display a summary of the data.
# Procedure: Step-by-Step Execution Create Dataframe: data.frame() creates KasinathCA with five columns (EmpID, Name, Dept, Salary, Age) and 10 rows of employee data. Display Table: print() outputs the entire dataframe including all column headers and row entries to the console. Print Summary Header: cat() prints a separator label before the statistical summary. Generate Summary: summary() computes descriptive statistics (Min, Mean, Max) for numeric columns and frequency for character columns.
# Result: Employee dataframe with 10 rows created. Summary shows statistics for EmpID, Salary, and Age.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- data.frame(
EmpID  = 1:10,
Name   = c("Kasi","Arun","Priya","Raj","Divya","Kumar","Meena","Suresh","Nithya","Vijay"),
Dept   = c("IT","HR","IT","Finance","IT","HR","Finance","IT","HR","IT"),
Salary = c(50000,45000,60000,55000,48000,52000,58000,62000,47000,53000),
Age    = c(25,30,28,35,27,32,29,33,26,31)
)
print(KasinathCA)
cat("\nSummary:\n")
summary(KasinathCA)
