library(shiny)
# Define UI for application
shinyUI(fluidPage(
# Header or Title Panel
titlePanel(title = h4("Iris Dataset analysis using histogram and data representation", align="center")),
sidebarLayout(
# Sidebar panel

sidebarPanel(
    selectInput("var", "1. Select the variable from the iris dataset", 
                        choices =c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4), selected = 1),
    br(),
    sliderInput("bins", "2. Select the number of bins in histogram", min=5, max = 40, value=20),
    br(),
    radioButtons("color", "3. Select the colour of histogram", 
                choices=c("red", "yellow", "green", "violet", "orange", "blue", "pink", "cyan"), 
                selected ="green"),
    p("you can select variable from the 1. to drow histogram and to view data, 
      we can increase and decrease the number of bins in the histogram by selecting the number of bins from 2, we can change the colour
      of histogram by selecting colour from 3 ")
    ),
# Main Panel

mainPanel(
      tabsetPanel(type="tab",
      # tabPanel("Summary",verbatimTextOutput("sum")),
      tabPanel("Summary", " "),
      p("iris dataset use in this app from that dataset we are using"),
      p("Sepal.Length, Sepal.Width, Petal.Length, Petal.Width"),

      tabPanel("Data", tableOutput("data")),
      p("To view what are the data value present in the selcted variable click on the data tag"),
      tabPanel("Plot", plotOutput("myhist")),
      p("To view the histogram of selected variable click on plot tag "),
      p(" You can change the colour of histogram by selecting colour from sidebarPanel")
      )
    )
  )
  )
)