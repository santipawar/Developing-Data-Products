

library(shiny)
shinyUI(fluidPage(
  fluidRow(
    headerPanel("Developing Data Products Week 4 Project"),
    h3('Date: 17th Dec, 2017'),
    titlePanel('Find locations of places'),
    helpText("Type the names of places to find their geo-location"),
    h3('Input'),
    helpText("Note: Input 1 location per line. A maximum of 10 locations can be queried at one time."),
    HTML('<textarea id="addressArea" rows="10" cols="500">Orlando, FL, USA</textarea>'),
    br(),
    actionButton("goButton", "Done!"),
    hr()
  ),
  fluidRow(
    h3('Output'),
    h4('Locations identified'),
    tableOutput("locations")
  )
))