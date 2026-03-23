# Required packages:
# None

# Title: Dataframe Subsetting by Threshold
# Aim: To write a code snippet to subset a dataframe to include only rows where a specific column value is greater than a threshold.
# Procedure: Step-by-Step Execution Create Dataframe: data.frame() builds a dataframe named KasinathCA with columns Name and Marks for five students. Set Threshold: The variable threshold is assigned the value 85 to define the filtering condition. Subset Rows: Logical indexing KasinathCA[KasinathCA$Marks > threshold, ] selects only rows where Marks exceed the threshold. Display Output: print() outputs the filtered dataframe showing only students with Marks greater than 85.
# Result: Dataframe was subset to rows where Marks > 85. Three rows (Arun=90, Raj=92, Divya=88) were returned.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- data.frame(
Name  = c("Kasi", "Arun", "Priya", "Raj", "Divya"),
Marks = c(85, 90, 78, 92, 88)
)
threshold   <- 85
subset_df   <- KasinathCA[KasinathCA$Marks > threshold, ]
print(subset_df)
