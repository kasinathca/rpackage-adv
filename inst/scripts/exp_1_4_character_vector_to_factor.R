# Required packages:
# None

# Title: Character Vector to Factor
# Aim: To convert a character vector to a factor and display its levels.
# Procedure: Step-by-Step Execution Create Character Vector: The c() function defines a vector named char_vec containing six text entries: "Low", "High", and "Medium". Convert to Factor: The factor() function transforms the text into a categorical variable called KasinathCA. R automatically identifies the unique labels within the data. Display Data: The print() function outputs the original data values along with a list of the unique categories (Levels) found. Extract Levels: The levels() function isolates just the unique category names, and cat() prints them to the console.
# Result: The character vector was converted to a factor. Levels (High, Low, Medium) are displayed in alphabetical order.

# Name: Kasinath C A  Reg No: 24MID0124
char_vec   <- c("Low", "High", "Medium", "High", "Low", "Medium")
KasinathCA <- factor(char_vec)
print(KasinathCA)
cat("Levels:", levels(KasinathCA), "\n")
