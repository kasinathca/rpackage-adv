# Required packages:
# None

# Title: Merging Two Dataframes
# Aim: To write a code snippet to merge two dataframes by a common column.
# Procedure: Step-by-Step Execution Create df1: data.frame() creates the first dataframe with columns ID and Name for three students. Create df2: data.frame() creates the second dataframe with columns ID and Score for the same three students. Merge Dataframes: merge(df1, df2, by = "ID") combines both dataframes using the common column "ID" as the key. Display Output: print() outputs the merged dataframe with all three columns (ID, Name, Score) to the console.
# Result: Two dataframes were merged successfully using the common column 'ID'.

# Name: Kasinath C A  Reg No: 24MID0124
df1 <- data.frame(ID = c(1, 2, 3),
Name = c("Kasi", "Arun", "Priya"))
df2 <- data.frame(ID = c(1, 2, 3),
Score = c(85, 90, 78))
KasinathCA <- merge(df1, df2, by = "ID")
print(KasinathCA)
