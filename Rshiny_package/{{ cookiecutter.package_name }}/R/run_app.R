#' Run {{cookiecutter.project_name}} shiny app
#'
#'
#' This is a Shiny web application. You can run the application by clicking
#' the 'Run App' button above.
#'
#' Find out more about building applications with Shiny here:
#'
#'   https://shiny.posit.co/
#'
#'
#' @param ... Other parameters to be passed on to shinyApp
#'
#' @return Nothing
#'
#' @import shiny
#'
#' @export
#'
run_app <- function(...) {

  # find the www map
  www <- system.file("dashboard", "www", package="{{cookiecutter.package_name}}")
  addResourcePath("www", system.file(file.path("dashboard", "www"), package="{{cookiecutter.package_name}}"))

  ui <- fluidPage(

    # generic metadata
    tags$head(tags$title("{{cookiecutter.project_name}}")),
    tags$head(tags$link(rel="shortcut icon", href="www/favicon.ico")),

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    ),

    # include style file
    includeCSS(file.path(www, "example.css"))
  )

  # Define server logic required to draw a histogram
  server <- function(input, output, session) {

      output$distPlot <- renderPlot({
          # generate bins based on input$bins from ui.R
          x    <- datasets::faithful[, 2]
          bins <- seq(min(x), max(x), length.out = input$bins + 1)

          # draw the histogram with the specified number of bins
          graphics::hist(x, breaks = bins, col = 'darkgray', border = 'white',
               xlab = 'Waiting time to next eruption (in mins)',
               main = 'Histogram of waiting times')
      })
  }

  shinyApp(ui, server, ...)
}
