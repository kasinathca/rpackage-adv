# Required packages:
# None

# Title: Unique Elements â€” String and Vector
# Aim: To write an R program to get the unique elements of a given string and unique numbers of a vector.
# Procedure: Step-by-Step Execution Split String: strsplit("kasinath", "")[[1]] breaks the string into individual characters and stores them. Find Unique Characters: unique() filters out repeated characters, keeping only the first occurrence of each. Create Number Vector: c(1, 2, 3, 2, 4, 3, 5, 1, 6, 4) defines a numeric vector with repeated values. Find Unique Numbers: unique() on the numeric vector returns only distinct values in their first-occurrence order.
# Result: Unique characters from 'kasinath' (k a s i n t h) and unique numbers (1 2 3 4 5 6) extracted.

# Name: Kasinath C A  Reg No: 24MID0124
# Unique characters from string
str_chars  <- strsplit("kasinath", "")[[1]]
cat("Unique chars:", unique(str_chars), "\n")

# Unique numbers from vector
num_vec    <- c(1, 2, 3, 2, 4, 3, 5, 1, 6, 4)
cat("Unique nums :", unique(num_vec), "\n")
