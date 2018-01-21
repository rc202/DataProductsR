library(shiny)

# Define server for the shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$Nitrous_Oxide_Plot <- renderPlot({
    
    airdata <- readRDS(file = url("https://raw.githubusercontent.com/rc202/DataProductsR/master/nox.rds"))
    # Render a barplot
    barplot(airdata[which(airdata$month==input$month & airdata$day==input$day),]$value, 
            main=paste("Hourly Data for ",input$day,"/",input$month,"/","2017", sep=""),
            ylab="NOX/PPB",
            xlab="Hour", col="purple")
  })
})

