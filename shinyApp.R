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
        column(3, textInput("time", "Time", 60)),
        column(2, selectInput("distUnits", "Units",
                              c("Minutes",
                                "Hours")))
      ),
      fluidRow(
        column(3, textInput("pace", "Pace", "Pace Run")),
        column(2, selectInput("distUnits", "Units",
                              c("Min per Mile",
                                "Min per Km")))
      ),
      # test 
      "Pace:",
      textOutput("pace_out")
      # end test code
    )
  )
)

# Define server logic ----
server <- function(input, output, session) {
  values <- reactiveValues(pace = 1, time = 1, dist = 10) #reactive({input$time})
  
  #values$time <- reactive({input$time()})
  
  #observeEvent(input$time, {
  #  values$pace <- values$dist / values$time
  #})
  
  #observe(input$time, {
  #values$time <- reactive({input$time})
  #values$pace <- reactive({values$dist}) / reactive({values$time})
  #})
  
  #observe(input$dist, {
  #  values$dist <- reactive({input$dist})
  #  values$pace <- reactive({values$dist / values$time})
  #})
  caldpace <- reactive({
    as.numeric(input$time)
    #input$dist / input$time
  })
  
  output$pace_out <- renderText({
    #as.numeric(input$time)
    caldpace
    #input$dist / input$time
    #values$time
  })
}

# Run the app ----
shinyApp(ui = ui, server = server)

#heart rate: 220-age = max ... max - resting * % + resting (1 - 50-60%, 60-70%)
