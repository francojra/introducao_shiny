library(shiny)

# Define a interface do usuário para o app que gera um histograma.
ui <- fluidPage(

  # Título do app.
  titlePanel("Meu primeiro shiny app!"),

  # Barra lateral com as definições do input e do output.
  sidebarLayout(

    # Barra lateral para os inputs.
    sidebarPanel("Painel lateral",

      # Input: número de classes do histograma.
      sliderInput(inputId = "classes", # O argumento label= recebe 
                  # o texto que aparecerá no widget, ajudando o 
                  # usuário a entender o que o input controla.
                  label = "Número de classes:",
                  min = 1, # Definição dos valores máximos e 
                  # mínimos que aparecerão no painel de seleção
                  max = 30,
                  value = 10) # Valor inicial que aparece no app

    ),

    # Painel principal para mostrar os outputs.
    mainPanel("Painel principal",

      # Output: Histograma
      plotOutput(outputId = "distPlot") # O output ID  
      # definirá o nome que usaremos para chamar esse 
      # input dentro do server.

    )
  )
)

### Criados os inputs e outputs do app, agora precisamos manipulá-los
### no server side.

# Define o código necessário para a construção de um histograma.
server <- function(input, output) {

  # Função que gera o histograma e devolve para o user side.
  # Essa função é reativa. Isso significa que o histograma
  # vai mudar sempre que o valor do número de classes mudar.
  output$distPlot <- renderPlot({
# Existe uma função render_() para cada tipo de objeto.
    x    <- iris$Sepal.Length
    bins <- seq(min(x), max(x), length.out = input$classes + 1)
# para acessar o valor escolhido para o número de classes 
    # no exemplo do histograma, utilizaremos input$classes.
    library(ggplot2)
       ggplot(iris, aes(x = x)) +
           geom_histogram(breaks = bins, fill = "forestgreen", 
                          color = "white") +
         labs(x = "Comprimento de sépalas",
         title = "Histograma da Frequência do Comprimento de Sépalas\n
         Dados Iris")

  })

}

shinyApp(ui = ui, server = server)