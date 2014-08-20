library(shiny)

smokingCost <- function(y, m, n, p) {(y*12 + m)*n*p}

shinyServer(
  function(input, output) {
    output$cost <- renderPrint({smokingCost(input$years, input$months, input$packs, input$price)})
  }
)
