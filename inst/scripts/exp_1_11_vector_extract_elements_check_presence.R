# Required packages:
# None

# Title: Vector â€” Extract Elements & Check Presence
# Aim: To create a numeric vector with 10 elements, extract the 2nd and 4th elements, and check if the number 25 is present.
# Procedure: Step-by-Step Execution Set Seed: set.seed(124) ensures reproducible random sampling each time the code is run. Create Vector: sample(10:60, 10) randomly picks 10 unique numbers from the range 10 to 60. Extract 2nd Element: KasinathCA[2] uses index-based access to retrieve the second value from the vector. Extract 4th Element: KasinathCA[4] uses index-based access to retrieve the fourth value from the vector. Check Presence: The %in% operator returns TRUE if 25 is found in the vector, or FALSE otherwise.
# Result: 2nd element=27, 4th element=37 extracted. Number 25 is not present in the vector.

# Name: Kasinath C A  Reg No: 24MID0124
set.seed(124)
KasinathCA <- sample(10:60, 10)
cat("Vector       :", KasinathCA, "\n")
cat("2nd element  :", KasinathCA[2], "\n")
cat("4th element  :", KasinathCA[4], "\n")
cat("25 present?  :", 25 %in% KasinathCA, "\n")
