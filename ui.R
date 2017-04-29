# ui.R

shinyUI(fluidPage(
  titlePanel("title panel"),
  
  selectInput(inputId = "n_states",
                label = "Choose a State:",
                choices = c('Select Option','Alabama', 'Texas', 'California', 'Wyoming'),
                selected = 'Select Option'),
  
  textOutput(outputId = "main_plot")
  
))