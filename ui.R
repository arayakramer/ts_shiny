library(shiny)

ui <- fluidPage(
  selectInput(
    inputId = "selected_store",
    label = "Selected store:",
    choices = unique(sales_df$scode)
  ),
  selectInput(
    inputId = "selected_sku",
    label = "Select SKU:",
    choices = unique(sales_df$pcode)
  ),
  plotOutput("ts_plot"),
  verbatimTextOutput('debug')
) # drop down menu for app
