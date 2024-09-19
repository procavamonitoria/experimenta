library(shiny)

ui <- fluidPage(
  # sidebar with generic example inputs
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "i_slider",     # control widget ID     
        "Slider Input", # label above the widget
        min = 1,
        max = 50,
        value = 30
      ),
      fileInput(
        "i_file",       # control widget ID     
        "File Input"    # label above the widget
      ),
      dateInput(
        "i_date",       # control widget ID     
        "Date Input"    # label above the widget
      ),
      textInput(
        "i_text",       # control widget ID     
        "Text Input"    # label above the widget
      ),
      selectInput(
        "i_select",     # control widget ID     
        "Select Input", # label above the widget
        choices = c("A","B","C")
      ),
      radioButtons( 
        "i_radio",      # control widget ID  
        "Radio Buttons",# label above the widget
        choices = c("A","B")
      )
    ),
    mainPanel("Look at all those inputs!")
  )
)

# blank server logic - the App does nothing with 
# control widget inputs and creates no output!
server <- function(input, output) {}

# run the Shiny app
shinyApp(ui = ui, server = server)