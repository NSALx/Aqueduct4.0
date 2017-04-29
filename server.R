library(dataRetrieval)

shinyServer(function(input, output) {
  state = c('Alabama','Texas','California','Wyoming', 'Nebraska')
  code =  c('AL','TE','CA','WY','')
  
  output$main_plot <- renderText({
    value = match(input$n_states,state)
  
    if(is.na(value)){
    
    }
  
    else{
      code[value]
    }
  })
})