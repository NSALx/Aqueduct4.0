shinyServer(function(input, output) {
  state = c('Alabama','Texas','California','Wyoming')
  code =  c('AL','TE','CA','WY')
  output$main_plot <- renderText({
  value = match(input$n_states,state)
  code[value]

  })
})
  