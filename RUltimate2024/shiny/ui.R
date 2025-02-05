shinyUI(fluidPage(
  titlePanel("Life Expectancy and GDP"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "year",
                  label = "Year",
                  min = year_start,
                  max = year_end,
                  value = year_start,
                  step = 5),
      checkboxGroupInput(inputId = "chk_continents",
                         label = "Continents",
                         choices = continents,
                         selected = continents)
    ),
    mainPanel(
      plotOutput("plt_life_expectancy")
    )
  )
))