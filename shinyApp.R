library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel("Pace Calculator"),
  
  sidebarLayout(
    sidebarPanel("Some useful information about this app... if you want to support my project, hit up the venmo"),
    mainPanel(
      textInput("Distance", "Distance", "Data Summary"),
      textInput("Time", "Time", "Data Summary"),
      textInput("Pace", "Pace", "Data Summary")
    )
  )
)

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
