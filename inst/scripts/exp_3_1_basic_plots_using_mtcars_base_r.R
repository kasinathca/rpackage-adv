# Required packages:
# None

# Title: Basic Plots using mtcars (Base R)
# Aim: To load the in-built dataset mtcars from R and plot various basic plots using par(mfrow=c(3,3)) to display them in a 3x3 grid.
# Procedure: Step-by-Step Execution Load Dataset: data(mtcars) loads the built-in mtcars dataset containing performance data for 32 cars. Set Plot Grid: par(mfrow = c(3, 3)) arranges the graphics window into a 3x3 layout to display 9 plots at once. Adjust Margins: par(mar = c(4, 4, 3, 1)) reduces the margin sizes to prevent layout errors in the grid. Create Bar Plots: barplot() generates both a vertical bar chart (cylinder count) and a horizontal bar chart (gear count). Create Box Plots: boxplot() produces a single-variable box plot for MPG and a grouped box plot for MPG by cylinder count. Create Scatter and Line Plots: plot() with pch=19 creates scatter plots, and type="l" creates a line trend plot for horsepower. Create Histogram:hist() plots the frequency distribution of MPG values across all cars. Create Pie Chart: pie() displays the proportion of cars with 4, 6, and 8 cylinders in a circular chart.
# Result: 9 basic R plots were created from the mtcars dataset and displayed in a 3x3 grid using par(mfrow=c(3,3)). All axes labelled and titles include 24MID0124.

# Name: Kasinath C A  Reg No: 24MID0124
data(mtcars)

# Set up the 3x3 grid
par(mfrow = c(3, 3))

# Shrink the margins to prevent the "figure margins too large" error
# Format is c(bottom, left, top, right)
par(mar = c(4, 4, 3, 1))

# 1. Vertical Bar Plot
barplot(table(mtcars$cyl),
main = "Cylinder Count - 24MID0124",
xlab = "Cylinders", ylab = "Frequency",
col  = c("steelblue", "orange", "green"))

# 2. Horizontal Bar Plot
barplot(table(mtcars$gear),
main  = "Gear Count - 24MID0124",
xlab  = "Frequency", ylab = "Gears",
col   = c("tomato", "skyblue", "gold"),
horiz = TRUE)

# 3. Box Plot (single variable)
boxplot(mtcars$mpg,
main = "MPG Boxplot - 24MID0124",
ylab = "Miles Per Gallon",
col  = "lightgreen")

# 4. Multiple Box Plot (mpg grouped by cyl)
boxplot(mpg ~ cyl, data = mtcars,
main = "MPG by Cylinder - 24MID0124",
xlab = "Cylinders", ylab = "MPG",
col  = c("red", "blue", "green"))

# 5. Scatter Plot (points)
plot(mtcars$wt, mtcars$mpg,
main = "Weight vs MPG - 24MID0124",
xlab = "Weight (1000 lbs)", ylab = "Miles Per Gallon",
pch = 19, col = "purple")

# 6. Line Plot
plot(mtcars$hp, type = "l",
main = "Horsepower Trend - 24MID0124",
xlab = "Car Index", ylab = "Horsepower",
col  = "darkblue", lwd = 2)

# 7. Histogram
hist(mtcars$mpg,
main = "MPG Histogram - 24MID0124",
xlab = "Miles Per Gallon", ylab = "Frequency",
col  = "orange", border = "white")

# 8. Plot with Points and Lines
plot(mtcars$disp, mtcars$hp, type = "b",
main = "Displacement vs HP - 24MID0124",
xlab = "Displacement", ylab = "Horsepower",
col = "darkgreen", pch = 19)

# 9. Pie Chart
pie(table(mtcars$cyl),
main = "Cylinder Distribution - 24MID0124",
col  = c("gold", "lightblue", "pink"))
