# Required packages:
# None

# Title: Standardize Dataset using scale()
# Aim: To standardize all variables in USArrests to z-scores (mean=0, sd=1) using scale(). Store in usarrests_scaled.
# Procedure: Step-by-Step Execution 1.   Assign Dataset: KasinathCA <- USArrests loads the raw dataset for processing. 2.   Apply scale(): scale(KasinathCA) subtracts the mean and divides by the SD for each column, producing z-scores with mean=0 and sd=1. 3.   Verify Means: colMeans(usarrests_scaled) is printed and rounded to 10 decimal places; all values should be effectively zero. 4.   Verify Standard Deviations: apply(usarrests_scaled, 2, sd) is printed; all column SDs should equal exactly 1, confirming correct standardization.
# Result: USArrests standardized successfully. All 4 columns now have mean=0 and sd=1, stored in usarrests_scaled.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- USArrests

# scale() converts each column to z-scores: mean=0, sd=1
usarrests_scaled <- scale(KasinathCA)

cat("Column means (should be ~0):\n")
print(round(colMeans(usarrests_scaled), 10))
cat("Column SD (should be 1):\n")
print(round(apply(usarrests_scaled, 2, sd), 5))
