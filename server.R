library(maps)
library(dplyr)
library(lubridate)
library(dataRetrieval)

shinyServer(function(input, output) {
  state = c("Alabama","Texas","California","Wyoming", "Nebraska")
  code = c("AL","TX","CA","WY","NE")
  #code = c("05427718", "05427718", "05427718", "05427719", "05427418")
  output$main_plot <- renderText({
    value = match(input$n_states,state)
    
    if(is.na(value)){
      textOutput
    }
  
    else{
      sCode = code[value]
      stDV <- readNWISdata(stateCd=sCode,parameterCd="00010", service="dv")
      stDV
      print(sCode)
    }
  })
})