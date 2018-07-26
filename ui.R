#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


shinyUI(fluidPage(
  
  titlePanel("Data Science Coursera Capstone"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("text", 
                h4(" "),
                value = "Enter text here")
    ),
    mainPanel(
      h4("Do you mean:"),
      textOutput("text1") 
        
    )
  )
))


