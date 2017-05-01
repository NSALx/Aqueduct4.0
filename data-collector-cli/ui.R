# ui.R

shinyUI <- fluidPage(
  titlePanel("Where is the Water??"),
  
  selectInput(inputId = "n_states",
                label = "Choose a State:",
                choices = c("Select Option","Alabama","Texas","California","Wyoming", "Nebraska", "Montana"),
                selected = "Texas"),
  
  selectInput(inputId = "parameter",
              label = "Choose a Parameter:",
              choices = c("Select Option","Discharge","Gage Height","Temperature","pH", "Ground Water Level"),
              selected = "Temperature"),
  dateRangeInput(inputId = "date", 
                 label = "Choose a date range: ",
                 start = "2016-12-02",
                 end = "2016-12-03"),
  
  titlePanel("Sum:"),
  textOutput(outputId = "sumValue"),
  titlePanel("Average:"),
  textOutput(outputId = "averageValue"),
  tableOutput(outputId = 'outD')
  #textOutput(outputId = "main_plot")
  #plotOutput(outputId = "main_plot")
  
)