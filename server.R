#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

df_list <- readRDS("list.rds")
source("predicte.R", local = TRUE)

shinyServer(function(input, output) {
  
  prediction <- reactive( {
    predict(input$text)
  })
  
  output$prediction <- renderPrint(prediction())
  #output$text1 <- renderText({paste("Input Sentence: ", input$text)});
  
  output$text1 = renderText({
    paste(input$text, prediction())
  })
})

