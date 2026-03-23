# Required packages:
# None

# Title: List with Mixed Vectors
# Aim: To create a list containing a numeric vector, a character vector, and a logical vector. Access the second element of the list.
# Procedure: Step-by-Step Execution Define the List: The list() function creates a container named KasinathCA that holds three different types of data vectors: numeric_vec: A sequence of four numbers. char_vec: A sequence of four text strings. logical_vec: A sequence of four TRUE/FALSE values. Assign Names: Each vector inside the list is given a specific label (like numeric_vec) so they can be identified easily. Access Element: The double brackets [[2]] are used to select the second "compartment" of the list. Display Output: The print() function outputs the contents of that second compartmentâ€”the character vectorâ€”to the console.
# Result: A list with numeric, character and logical vectors was created. The second element (character vector) was accessed successfully.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- list(
numeric_vec = c(10, 20, 30, 124),
char_vec    = c("Kasinath", "VIT", "Data", "Visualization"),
logical_vec = c(TRUE, FALSE, TRUE, FALSE)
)
# Access second element
print(KasinathCA[[2]])
