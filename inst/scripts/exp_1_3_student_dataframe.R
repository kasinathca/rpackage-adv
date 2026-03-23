# Required packages:
# None

# Title: Student Dataframe
# Aim: To create a dataframe with columns: StudentID, Name, and Marks. Add 5 rows of data and display the dataframe.
# Procedure: Step-by-Step Execution Define Columns: The data.frame() function is used to create three columns: StudentID (numbers), Name (text), and Marks (numbers). Align Data: R automatically aligns these columns so that the first value in each vector (1, "Kasi", 85) forms the first row of the table. Store Table: The resulting table is saved into the variable named KasinathCA. Display Output: The print() function outputs the entire table, including column headers and row numbers, to the console.
# Result: A dataframe with 5 student records (StudentID, Name, Marks) was created and displayed successfully.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- data.frame(
StudentID = c(1, 2, 3, 4, 5),
Name      = c("Kasi", "Arun", "Priya", "Raj", "Divya"),
Marks     = c(85, 90, 78, 92, 88)
)
print(KasinathCA)
