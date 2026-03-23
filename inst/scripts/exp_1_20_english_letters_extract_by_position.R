# Required packages:
# None

# Title: English Letters â€” Extract by Position
# Aim: To extract the first 10 English letters in lower case, the last 10 letters in upper case, and letters between 22nd to 24th in upper case.
# Procedure: Step-by-Step Execution Extract First 10 Lowercase: letters[1:10] accesses the built-in lowercase alphabet vector to retrieve letters a through j. Extract Last 10 Uppercase: LETTERS[17:26] accesses the built-in uppercase alphabet vector to retrieve letters Q through Z. Extract 22nd to 24th Uppercase: LETTERS[22:24] retrieves the 22nd, 23rd, and 24th uppercase letters (V, W, X). Display Output: cat() prints each extracted set with a descriptive label to the console.
# Result: First 10 lowercase (a-j), last 10 uppercase (Q-Z), and 22nd-24th uppercase (V W X) extracted correctly.

# Name: Kasinath C A  Reg No: 24MID0124
cat("First 10 (lowercase)      :", letters[1:10],   "\n")
cat("Last 10  (uppercase)      :", LETTERS[17:26],  "\n")
cat("22nd to 24th (uppercase)  :", LETTERS[22:24],  "\n")
