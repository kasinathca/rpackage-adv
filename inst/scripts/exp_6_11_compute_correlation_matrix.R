# Required packages:
# None

# Title: Compute Correlation Matrix
# Aim: To compute the pairwise Pearson correlation matrix for all numeric variables in USArrests using cor().
# Procedure: Step-by-Step Execution 1.   Load Dataset: KasinathCA <- USArrests assigns the 50x4 crime dataset. 2.   Compute Correlations: cor(KasinathCA) calculates Pearson correlation coefficients for every pair of the 4 numeric variables. 3.   Round Values: round(corr_matrix, 3) reduces each value to 3 decimal places for cleaner display. 4.   Interpret Results: The printed matrix shows Murder-Assault: 0.802 (strong positive); Murder-UrbanPop: 0.070 (very weak); diagonal: 1.000.
# Result: Murder-Assault: strong positive (0.802). UrbanPop-Murder: very weak (0.070). All diagonal = 1.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA  <- USArrests

# cor() computes pairwise linear (Pearson) correlations
corr_matrix <- cor(KasinathCA)

cat("Correlation Matrix:\n")
print(round(corr_matrix, 3))
