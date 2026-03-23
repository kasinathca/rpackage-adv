# Required packages:
# None

# Title: Factor â€” Levels and Occurrence Count
# Aim: To create a factor object from the given fruit vector, find the level of each factor and count the occurrences of each level.
# Procedure: Step-by-Step Execution Create Factor: factor() converts a character vector of fruit names into a categorical variable named KasinathCA, automatically identifying unique labels. Display Levels: levels() extracts the unique category names and cat() prints them in alphabetical order. Count Occurrences: table() counts how many times each unique level appears in the factor. Display Counts: print() outputs the frequency table showing the count for each fruit category.
# Result: Factor created with 5 levels. apple=3, banana=2, grapes=2, orange=2, pineapple=1.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- factor(c("apple","orange","apple","grapes","banana",
"grapes","apple","banana","orange","pineapple"))
cat("Levels:", levels(KasinathCA), "\n")
print(table(KasinathCA))
