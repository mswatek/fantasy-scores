
fluidPage(    
  
  # Give the page a title
  titlePanel("Fantasy Scores"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      checkboxGroupInput("Team", label = h3("Select Team"), 
                         choices = c("Jeff","Jordan","Emmerts",
                                     "CJ","Jimmy","Phil",
                                     "Mat","Clegg","Rob","Shawn",
                                     "Seth","Truscott"))
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("phonePlot")  
    )
    
  )
)