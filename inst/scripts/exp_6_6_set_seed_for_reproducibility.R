# Required packages:
# None

# Title: Set Seed for Reproducibility
# Aim: To set a seed value using set.seed() to ensure reproducible K-means results.
# Procedure: Step-by-Step Execution 1.   Understand Randomness: K-means initialises cluster centres randomly, so results differ across runs without a fixed seed. 2.   Choose Seed Value: set.seed(0124) uses the last 4 digits of the registration number as the seed for personal traceability. 3.   Set the Seed: set.seed(0124) fixes Râ€™s random number generator so all subsequent random operations produce the same sequence. 4.   Confirm with Message: cat() prints a confirmation message verifying that all K-means runs in this session will produce identical results.
# Result: set.seed(0124) called. All K-means runs with this seed will produce identical results.

# Name: Kasinath C A  Reg No: 24MID0124

# set.seed() makes random number generation reproducible
# Using last 4 digits of roll no: 0124
set.seed(0124)

cat("Seed set to 0124. K-means will be reproducible.\n")
