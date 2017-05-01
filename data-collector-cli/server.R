library(dataRetrieval)

isPositive <- function(x) x>=0

shinyServer <- function(input, output) {
  state = c("Alabama","Texas","California","Wyoming", "Nebraska", "Montana") #Vector used to map between 
  code = c("AL","TX","CA","WI","NE", "MN")                                   #choices and codes
  parameters = c("Discharge","Gage Height","Temperature","pH")
  codeP = c("00060", "00065", "00010", "00400")
  
  output$outD <- renderTable({

    beginD = format(input$date[1])
    endD = format(input$date[2])
    
    value1 = match(input$n_states,state)
    value2 = match(input$parameter,parameters)
    sCode = code[value1]
    pCode = codeP[value2]
    
    stDV <- readNWISdata(service="dv", parameterCd=pCode, stateCd=sCode, startDate=beginD, endDate=endD)
 
    output$sumValue <- reactive(toString(sum(Filter(isPositive, stDV[,4]), na.rm=TRUE)))
    output$averageValue <- reactive(toString(mean(Filter(isPositive, stDV[,4]), na.rm=TRUE)))
    stDV
  })
}
