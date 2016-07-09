library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Title of the Application.
  titlePanel("Shiny Application Course Project"),
  
  # Sidebar to for input/selection of Title and Dataset.
  sidebarLayout(
    sidebarPanel(
      textInput("title", "Title:", "Summary of Data"),
      
      selectInput("dataset", "Dataset:", 
                  choices = c("mtcars", "cars"))
    ),
    
    
    # Display the Title and Summary of the dataset selected.
    mainPanel(
      h3(textOutput("title", container = span)),
      
      verbatimTextOutput("summary")
    )
  )
))