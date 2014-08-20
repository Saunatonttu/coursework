library(shiny)

# UI for the application
shinyUI(
  pageWithSidebar(
    	# Title of the application
    	headerPanel("How much has your smoking cost you?"),
  
    	sidebarPanel(
		h5('To find out how much money in euros you have spent on smoking, please enter the correct values and press submit.'),
      		numericInput('years', 'Years smoked', 0, min = 0, max = 100, step = 1),
		numericInput('months', 'Months smoked', 0, min = 0, max = 11, step = 1),
		numericInput('packs', 'Packs per month on average', 0, min = 0, max = 200, step = 1),
		numericInput('price', 'Price of pack on average in euros', 0, min = 0, max = 20, step = 0.1),
      		submitButton('Submit')
    	),
    	mainPanel(
        	h3('Total cost of smoking:'),
        	h4('You have spent a total of'),
        	verbatimTextOutput("cost"),
		h4('euros on smoking.')
    	)
  )
)

