library(dataRetrieval)

shinyServer <- function(input, output) {
  state = c("Alabama","Texas","California","Wyoming", "Nebraska", "Montana")
  code = c("AL","TX","CA","WI","NE", "MN")
  parameters = c("Discharge","Gage Height","Temperature","pH")
  
  output$outD <- renderTable({

    beginD = format(input$date[1])
    #endD = format(input$date[2])
    endD = beginD
    
    value1 = match(input$n_states,state)
    value2 = match(input$parameter,parameters)
    sCode = code[value1]
    pCode = codeP[value2]
    
    stDV <- readNWISdata(service="dv", parameterCd=pCode, stateCd=sCode, startDate=beginD, endDate=endD)
    stDV
    
    row <- head(stDV)
 
    output$sumValue <- reactive(unname(colSums(stDV[4:4])))
    output$averageValue <- reactive(unname(colMeans(stDV[4:4])))
    stDV
  })
}
