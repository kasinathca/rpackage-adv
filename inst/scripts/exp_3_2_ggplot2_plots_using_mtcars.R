# Required packages:
# install.packages("dplyr")
# install.packages("ggplot2")
# install.packages("gridExtra")

# Title: ggplot2 Plots using mtcars
# Aim: To load the mtcars dataset and plot various ggplot2 visualizations displayed in a 3x3 grid using gridExtra::grid.arrange().
# Procedure: Step-by-Step Execution Load Libraries: library(ggplot2) and library(gridExtra) import the visualization and layout packages. Prepare Data: mtcars$cyl and mtcars$gear are converted to factors so ggplot2 treats them as categorical variables. Create Individual Plots: Nine ggplot2 objects (p1 through p9) are defined using geom_bar(), geom_histogram(), geom_boxplot(), geom_point(), geom_line(), and geom_smooth(). Apply Titles: Each plot receives a descriptive labs() title that includes the roll number 24MID0124. Arrange in Grid: grid.arrange(p1, ..., p9, ncol = 3) displays all nine plots in a 3-column layout simultaneously.
# Result: 9 ggplot2 plots created from mtcars dataset arranged in a 3x3 grid using grid.arrange(ncol=3). Titles include 24MID0124.

library(dplyr)
library(ggplot2)
library(gridExtra)

# Name: Kasinath C A  Reg No: 24MID0124
data(mtcars)
mtcars$cyl  <- factor(mtcars$cyl)
mtcars$gear <- factor(mtcars$gear)

# 1. Bar Chart â€” Cylinder frequency
p1 <- ggplot(mtcars, aes(x = cyl, fill = cyl)) +
geom_bar() +
labs(title = "Cylinder Freq - 24MID0124", x = "Cylinders", y = "Count")

# 2. Histogram â€” MPG distribution
p2 <- ggplot(mtcars, aes(x = mpg)) +
geom_histogram(fill = "tomato", bins = 10, color = "white") +
labs(title = "MPG Histogram - 24MID0124", x = "MPG", y = "Frequency")

# 3. Box Plot â€” MPG by cylinder
p3 <- ggplot(mtcars, aes(x = cyl, y = mpg, fill = cyl)) +
geom_boxplot() +
labs(title = "MPG by Cyl - 24MID0124", x = "Cylinders", y = "MPG")

# 4. Scatter Plot â€” Weight vs MPG
p4 <- ggplot(mtcars, aes(x = wt, y = mpg)) +
geom_point(color = "purple", size = 2) +
labs(title = "Wt vs MPG - 24MID0124", x = "Weight", y = "MPG")

# 5. Scatter â€” HP vs MPG coloured by cyl
p5 <- ggplot(mtcars, aes(x = hp, y = mpg, color = cyl)) +
geom_point(size = 2) +
labs(title = "HP vs MPG - 24MID0124", x = "Horsepower", y = "MPG")

# 6. Line Plot â€” Horsepower trend
p6 <- ggplot(mtcars, aes(x = seq_along(hp), y = hp)) +
geom_line(color = "darkblue", size = 1) +
labs(title = "HP Trend - 24MID0124", x = "Index", y = "HP")

# 7. Scatter with Linear Regression line
p7 <- ggplot(mtcars, aes(x = wt, y = mpg)) +
geom_point() + geom_smooth(method = "lm", se = TRUE) +
labs(title = "Wt vs MPG Linear - 24MID0124")

# 8. Bar â€” Gear vs Mean MPG
p8 <- ggplot(mtcars, aes(x = gear, y = mpg, fill = gear)) +
geom_bar(stat = "identity") +
labs(title = "Gear vs MPG - 24MID0124", x = "Gears", y = "MPG")

# 9. Points + Lines â€” Displacement vs HP
p9 <- ggplot(mtcars, aes(x = disp, y = hp)) +
geom_point(color = "darkgreen") +
geom_line(color = "red") +
labs(title = "Disp vs HP - 24MID0124", x = "Displacement", y = "HP")

grid.arrange(p1, p2, p3, p4, p5, p6, p7, p8, p9, ncol = 3)
