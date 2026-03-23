# Required packages:
# None

# Title: Repeat Loop â€” Print 'Learning R' 5 Times
# Aim: To use a repeat loop to print 'Learning R' 5 times. Include a condition to break the loop.
# Procedure: Step-by-Step Execution Initialize Counter: count <- 1 sets the starting value before entering the repeat block. Print Message: cat() outputs "Learning R" followed by a newline on every iteration. Increment Counter: count <- count + 1 increases the counter by 1 after each print. Break Condition: if (count > 5) break exits the repeat loop once the message has been printed 5 times.
# Result: 'Learning R' printed exactly 5 times using a repeat loop. The break statement exits the loop when count > 5.

# Name: Kasinath C A  Reg No: 24MID0124
count <- 1
repeat {
cat("Learning R\n")
count <- count + 1
if (count > 5) break
}
