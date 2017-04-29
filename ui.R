# ui.R

shinyUI(fluidPage(
  titlePanel("Where is the Water??"),
  
  selectInput(inputId = "n_states",
                label = "Choose a State:",
                choices = c('Select Option','Alabama', 'Texas', 'California', 'Wyoming'),
                selected = 'Select Option'),
  
  textOutput(outputId = "main_plot")
  
))