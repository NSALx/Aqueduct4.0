# ui.R

shinyUI(fluidPage(
  titlePanel("Where is the Water??"),
  
  selectInput(inputId = "n_states",
                label = "Choose a State:",
                choices = c("Select Option","Alabama","Texas","California","Wyoming", "Nebraska"),
                selected = "Texas"),
  
  selectInput(inputId = "parameter",
              label = "Choose a Parameter:",
              choices = c("Select Option","Discharge","Gage Height","Temperature","pH", "Ground Water Level"),
              selected = "Temperature"),
  
  textOutput(outputId = "main_plot")
  
))