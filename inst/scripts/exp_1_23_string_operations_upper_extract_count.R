# Required packages:
# None

# Title: String Operations â€” Upper, Extract, Count
# Aim: To convert the string 'advanced data visualization techniques lab' to uppercase, extract the word 'DATA', and count the number of characters in 'VISUALIZATION'.
# Procedure: Step-by-Step Execution Convert to Uppercase: toupper() transforms all lowercase letters in the string to uppercase and stores the result. Split into Words: strsplit() breaks the uppercase string at each space, producing a vector of individual words. Extract Word DATA: Indexing with [2] retrieves the second word from the split result, which is "DATA". Count Characters: nchar("VISUALIZATION") counts the total number of characters in the string, returning 13.
# Result: String converted to uppercase. 'DATA' extracted as 2nd word. 'VISUALIZATION' has 13 characters.

# Name: Kasinath C A  Reg No: 24MID0124
s         <- "advanced data visualization techniques lab"
upper_s   <- toupper(s)
cat("Uppercase  :", upper_s, "\n")

# Extract word DATA (2nd word)
words     <- strsplit(upper_s, " ")[[1]]
cat("Word DATA  :", words[2], "\n")

# Character count of VISUALIZATION
cat("Chars in VISUALIZATION:", nchar("VISUALIZATION"), "\n")
