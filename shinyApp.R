library(shiny)

# Define UI ----
ui <- fluidPage( #
  titlePanel("Pace Calculator"),
  
  sidebarLayout(
    sidebarPanel("Some useful information about this app... if you want to support my project, hit up the venmo"),
    mainPanel(
      fluidRow(
        column(3, textInput("dist", "Distance", "Distance Run")),
        column(2, selectInput("distUnits", "Units",
                              c("Miles",
                                "Kilometers")))
      ),
      fluidRow(
        column(3, textInput("time", "Time", "Time Run")),
        column(2, selectInput("distUnits", "Units",
                              c("Minutes",
                                "Hours")))
      ),
      fluidRow(
        column(3, textInput("pace", "Pace", "Pace Run")),
        column(2, selectInput("distUnits", "Units",
                              c("Min per Mile",
                                "Min per Km")))
      )
    )
  )
)

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)

#heart rate: 220-age = max ... max - resting * % + resting (1 - 50-60%, 60-70%)
#
