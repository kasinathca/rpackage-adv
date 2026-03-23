# Required packages:
# None

# Title: While Loop â€” Print 1 to 10
# Aim: To write a while loop that prints numbers from 1 to 10 and explain how the loop terminates.
# Procedure: Step-by-Step Execution Initialize Counter: i <- 1 sets the starting value of the loop counter. Check Condition: The while loop continues as long as i <= 10 evaluates to TRUE. Print Value: cat() outputs the current value of i followed by a space on each iteration. Increment Counter: i <- i + 1 advances the counter by 1 on every iteration to avoid an infinite loop. Terminate Loop:When ibecomes 11, the condition i <= 10 becomes FALSE and the loop exits.
# Result: While loop printed 1 to 10. The loop terminates when i = 11, making the condition i <= 10 FALSE.

# Name: Kasinath C A  Reg No: 24MID0124
i <- 1
while (i <= 10) {
cat(i, " ")
i <- i + 1   # increment counter
}
cat("\n")
# The loop terminates when ibecomes 11, making the condition (i <= 10) FALSE.
