
library(readxl)
scores <- read.csv("newscores.csv")
weeks <- read.csv("weeks.csv")

library(ggplot2)

  function(input, output) {
    
    # Fill in the spot we created for a plot
    output$phonePlot <- renderPlot({
      
      # Render a barplot
      ggplot(weeks, aes(x = Week, y = weeks[,input$Team])) + 
        geom_point() + geom_line()+ylim(59,160)+labs(title="Scores by Week",
        x="Week",y="Points")
    })
  }