# Required packages:
# install.packages("ggplot2")
# install.packages("shiny")

# Title: mtcars Dashboard - Kasinath C A - 24MID0124
# Aim: To create a simple interactive Shiny dashboard using the mtcars dataset with all 5 input types (dropdown, radio button, checkbox, slider, text input) and a minimum of 5 visualizations.
# Procedure: Step-by-Step Execution 1.   Define UI: fluidPage() creates the layout with a titlePanel, sidebarLayout, sidebarPanel containing 5 inputs, and mainPanel with a tabsetPanel. 2.   Add 5 Input Types: selectInput (dropdown), radioButtons (radio), checkboxInput (checkbox), sliderInput (slider), and textInput are added to the sidebar. 3.   Build Server: The server function uses renderPlot() five times to generate scatter/line, histogram, boxplot, bar chart, and density plots reactively. 4.   Connect and Run: shinyApp(ui=ui, server=server) links UI and server; each input change triggers automatic re-rendering of the relevant plots.
# Result: Shiny dashboard created with all 5 required input types and 5 visualizations.

library(ggplot2)
library(shiny)

# Name: Kasinath C A  Reg No: 24MID0124
# Google Drive Recording Link: LINK


# â”€â”€ UI â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
ui <- fluidPage(
titlePanel("mtcars Dashboard - Kasinath C A - 24MID0124"),
sidebarLayout(
sidebarPanel(
# 1. Dropdown
selectInput("x_var", "Select X Variable:",
choices = c("wt","hp","disp","drat","qsec"),
selected = "wt"),
# 2. Radio button
radioButtons("plot_type", "Plot Type:",
choices = c("Scatter"="scatter","Line"="line","Both"="both"),
selected = "scatter"),
# 3. Checkbox
checkboxInput("show_smooth","Show Regression Line?", value = TRUE),
# 4. Slider
sliderInput("n_bins","Histogram Bins:", min=5, max=50, value=20),
# 5. Text input
textInput("custom_title","Custom Plot Title:",
value = "MPG Analysis - 24MID0124")
),
mainPanel(
tabsetPanel(
tabPanel("Scatter/Line", plotOutput("p1")),
tabPanel("Histogram",   plotOutput("p2")),
tabPanel("Boxplot",     plotOutput("p3")),
tabPanel("Bar Chart",   plotOutput("p4")),
tabPanel("Density",     plotOutput("p5"))
)
)
)
)

# â”€â”€ SERVER â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
server <- function(input, output) {

# Plot 1: Scatter / Line
output$p1 <- renderPlot({
g <- ggplot(mtcars, aes_string(x=input$x_var, y='mpg')) +
labs(title=input$custom_title, x=input$x_var, y='MPG') +
theme_minimal()
if(input$plot_type=='scatter') g <- g + geom_point(color='steelblue',size=3)
else if(input$plot_type=='line') g <- g + geom_line(color='steelblue')
else g <- g + geom_point(color='steelblue',size=3) + geom_line(color='tomato')
if(input$show_smooth) g <- g + geom_smooth(method='lm',se=TRUE)
g
})

# Plot 2: Histogram
output$p2 <- renderPlot({
ggplot(mtcars, aes(x=mpg)) +
geom_histogram(bins=input$n_bins, fill='orange', color='white') +
labs(title=paste('MPG Histogram -',input$n_bins,'bins'), x='MPG', y='Count') +
theme_minimal()
})

# Plot 3: Boxplot mpg by cyl
output$p3 <- renderPlot({
ggplot(mtcars, aes(x=factor(cyl), y=mpg, fill=factor(cyl))) +
geom_boxplot() +
labs(title='MPG by Cylinders - 24MID0124', x='Cylinders', y='MPG') +
theme_minimal()
})

# Plot 4: Bar chart by gear
output$p4 <- renderPlot({
ggplot(mtcars, aes(x=factor(gear), fill=factor(gear))) +
geom_bar() +
labs(title='Cars by Gear - 24MID0124', x='Gears', y='Count') +
theme_minimal()
})

# Plot 5: Density by cyl
output$p5 <- renderPlot({
ggplot(mtcars, aes(x=mpg, fill=factor(cyl))) +
geom_density(alpha=0.5) +
labs(title='MPG Density by Cylinders - 24MID0124', x='MPG', fill='Cyl') +
theme_minimal()
})

}

# â”€â”€ RUN â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
shinyApp(ui=ui, server=server)
