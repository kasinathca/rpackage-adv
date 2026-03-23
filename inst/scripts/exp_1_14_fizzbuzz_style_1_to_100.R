# Required packages:
# None

# Title: FizzBuzz-style: 1 to 100
# Aim: To print numbers from 1 to 100. Print 'Advanced Data' for multiples of 6, 'Visualization Techniques' for multiples of 8, and 'Advanced Data Visualization Techniques' for multiples of both.
# Procedure: Step-by-Step Execution Set Loop Range: The for loop iterates i from 1 to 100, checking each number against divisibility conditions. Check Both Divisors: If i is divisible by both 6 and 8 (i.e., by 48), it prints "Advanced Data Visualization Techniques". Check Divisor 6: If i is only divisible by 6, it prints "Advanced Data". Check Divisor 8: If i is only divisible by 8, it prints "Visualization Techniques". Default Case: For all other numbers, cat() simply prints the number itself.
# Result: Numbers 1-100 printed. Multiples of 6â†’'Advanced Data', mult of 8â†’'Visualization Techniques', mult of both (24,48,72,96)â†’'Advanced Data Visualization Techniques'.

# Name: Kasinath C A  Reg No: 24MID0124
for (i in 1:100) {
if (i %% 6 == 0 && i %% 8 == 0) {
cat(i, "- Advanced Data Visualization Techniques\n")
} else if (i %% 6 == 0) {
cat(i, "- Advanced Data\n")
} else if (i %% 8 == 0) {
cat(i, "- Visualization Techniques\n")
} else {
cat(i, "\n")
}
}
