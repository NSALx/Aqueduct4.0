library(dataRetrieval)

shinyServer <- function(input, output) {
  state = c("Alabama","Texas","California","Wyoming", "Nebraska")
  code = c("AL","TX","CA","WI","NE")
  parameters = c("Discharge","Gage Height","Temperature","pH")
  codeP = c("00060", "00065", "00010", "00400", "72150")
  
  output$outD <- renderTable({

    beginD = format(input$date[1])
    endD = format(input$date[2])
    #endD = beginD
    
    value1 = match(input$n_states,state)
    value2 = match(input$parameter,parameters)
    sCode = code[value1]
    pCode = codeP[value2]
    
    stDV <- readNWISdata(service="dv", parameterCd=pCode, stateCd=sCode, startDate=beginD, endDate=endD)
    stDV
  })
}
