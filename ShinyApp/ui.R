# Course Assignment for Data Products in R
# Shiny Web App


library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Oxides of Nitrogen (NOX) Pollution, London, UK"),
  
  
  #Input: Month Selector
  sidebarPanel(
    sliderInput("month", "Month:",
                min = 1, max =12,
                value =1),
    
    #Input: Day Selector
    sliderInput("day", "Day:",
                min = 1, max = 31, 
                value = 1)
  ),
  
  # Main panel for displaying outputs
  mainPanel(h5("The plot below shows the Nitrous Oxide pollution (PPB) in London per day in the year 2017:"),
            h5("Move the Month slider to select the month of interest"),
            h5("Move the Day slider to pick the day to view"),
            h5("For example, selecting Month = 7 and Day = 5 will show the NO pollution for the fifth day of July for each hour"),
            plotOutput("Nitrous_Oxide_Plot")
  )
)
)
