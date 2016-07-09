library(shiny)
library(datasets)

# Displays the Summary View of the selected dataset.
shinyServer(function(input, output) {
  
  # Declaring the datasetInput as reactive so that it is called only when dataset's value changes.
  datasetInput <- reactive({
    switch(input$dataset,
           "mtcars" = mtcars,
           "cars" = cars)
  })
  
  # Output the updated Title when it is changed.
  output$title <- renderText({
    input$title
  })
  
  # Output the Summary based on the changed dataset.
  output$summary <- renderPrint({
    dataset <- datasetInput()
    summary(dataset)
  })
})