# Required packages:
# None

# Title: Display First and Last Rows
# Aim: To display the first and last few rows of the USArrests dataset using head() and tail().
# Procedure: Step-by-Step Execution 1.   Assign Dataset: KasinathCA <- USArrests loads the dataset into the working variable. 2.   Print First Rows: cat() labels the section; print(head(KasinathCA)) displays the first 6 rows of the dataset. 3.   Print Last Rows: cat() labels the section; print(tail(KasinathCA)) displays the last 6 rows of the dataset. 4.   Observe Range: Comparing head() and tail() shows Alabama (high crime) and Vermont/Wyoming (lower crime) as contrasting examples.
# Result: First and last 6 rows displayed. Alabama (high murder) and Vermont (low crime) represent the extremes.

# Name: Kasinath C A  Reg No: 24MID0124
KasinathCA <- USArrests
cat("First 6 rows:\n"); print(head(KasinathCA))
cat("\nLast 6 rows:\n");  print(tail(KasinathCA))
