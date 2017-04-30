library(dataRetrieval)

shinyServer <- function(input, output) {
  state = c("Alabama","Texas","California","Wyoming", "Nebraska")
  code = c("AL","TX","CA","WI","NE")
  parameters = c("Discharge","Gage Height","Temperature","pH")
  codeP = c("00060", "00065", "00010", "00400", "72150")
  
  output$main_plot <- renderText({
    value1 = match(input$n_states,state)
    value2 = match(input$parameter,parameters)
    if(is.na(value1) || is.na(value2)){
      textOutput
    }
  
    else{
      sCode = code[value1]
      pCode = codeP[value2]
      stDV = readNWISuv(siteNumbers = "05427718",parameterCd = "00060",startDate = "2014-10-01",endDate = "2015-09-30")
      outD = renderDataTable(table(renameNWISColumns(stDV)))
      #outD
      #print(stDV)
    }
  })
}
