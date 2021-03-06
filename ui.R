#This is the UI.R interface for my Shiny application for the Coursera Developing
#Data Products Course
#This is a simple app that converts temperature from degrees Fahrenheit to Celsius
#The user inputs a value in Fahrenheit, hits Submit and the Shiny app converts it to Celsius

#Load the 'shiny' library
library(shiny)

#Define the overall User Interface
shinyUI(pageWithSidebar(

#Give the page a title        
    headerPanel("Fahrenheit to Celsius conversion"),
    
#Generate a sidebar panel and define with one input    
    sidebarPanel(
        
#This field requires the user to input a temperature (defaults to 0)        
        numericInput('temp', 'Temperature in Fahrenheit', 0, min=0, step=1),
        submitButton('Submit')
    ),

#We create an area on the screen for the output conversion to be displayed
    mainPanel(
        h3('Temperature conversion'),
        h4('You entered'),
        verbatimTextOutput("inputValue"),
        h4('Which converts to a Celsius value of '),
        verbatimTextOutput("calc")
    )
  )
)