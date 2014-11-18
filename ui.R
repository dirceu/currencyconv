# ui.R

shinyUI(fluidPage(
    titlePanel("Currency Converter"),
    
    sidebarLayout(
        sidebarPanel(
            helpText("Convert a value to another currency by typing an amount (e.g. 500.25) and choosing two different currencies."),
            helpText("This app uses an external API (http://rate-exchange.herokuapp.com) to gather the currency rate and then multiply it by the amount you choose to present the result."),

            textInput("val", 
                      label = "How much do you want to convert?"),
            
            selectInput("from", 
                        label = "Choose a currency from the list as the origin:",
                        choices = c("USD", "BRL", "CAD", "EUR"),
                        selected = "USD"),
            
            selectInput("to", 
                        label = "Choose a currency from the list as the destination:",
                        choices = c("USD", "BRL", "CAD", "EUR"),
                        selected = "BRL")
        ),
        
        mainPanel(
            strong("Your Converted Value"),
            textOutput("convertedValue")
        )
    )
))