#install.packages("rjson")
library(rjson)

shinyServer(function(input, output) {
    result <- function() {
        if(input$from == input$to) return("Please select different currencies.")
        if(input$val == "") return("Please type an amount.")
        url <- paste("http://rate-exchange.herokuapp.com/fetchRate?from=", input$from, "&to=", input$to, sep = "")
        document <- fromJSON(file = url, method = "C")
        n <- as.numeric(input$val)
        if(is.na(n)) n <- 1
        convertedValue <- as.numeric(document$Rate) * n
        paste(round(n, 2), " ", input$from, " in ", input$to, " = ", input$to, " ", round(convertedValue, 2), sep = "")
    }

    output$convertedValue <- renderText({ result() })
})