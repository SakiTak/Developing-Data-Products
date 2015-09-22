#This is the server.R interface for my Shiny aaplication
#This is a simple app that converts temperature from degrees Fahrenheit to Celsius
#The user inputs a value in Fahrenheit and the app converts it to Celsius
#The function that converts Fahrenheit to Celsisus is executed in the server.R

#This is the function that converts the temperature in degrees Fahrenheit to degrees Celsius
tempconversion <- function(temp) round((temp - 32)*5/9)

library(shiny)

#Define a server for the Shiny app
shinyServer(
    function(input, output) {

# Fill in the area we created for displaying the output
        output$inputValue <- renderPrint({input$temp})
        output$calc <- renderPrint({tempconversion(input$temp)})
    }
)