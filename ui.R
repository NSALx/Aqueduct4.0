# ui.R

shinyUI(fluidPage(
  titlePanel("title panel"),
  
  selectInput(inputId = "n_states",
                label = "Choose a State:",
                choices = c('Alabama', 'Texas', 'California', 'Wyoming'),
                selected = 'Alabama'),
  
  textOutput(outputId = "main_plot")
  
))