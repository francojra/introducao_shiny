# Introdução ao Shiny

## O que é shiny?

O Shiny é um sistema para desenvolvimento de aplicações web usando o R, um pacote do R (shiny) e um servidor web (shiny server). O Shiny é exatamente isso e nada mais, portanto Shiny não é uma página web.

Shiny é um framework em linguagem R para a criação de aplicativos web. Por não exigir conhecimento prévio de HTML, CSS e JavaScript, ele democratiza o acesso a essa área de desenvolvimento, permitindo a criação de aplicativos bonitos e complexos a partir de um script R.

O Shiny também possui uma base de JavaScript e CSS para deixar os aplicativos funcionais e com um visual satisfatório. Além disso, podemos utilizar por trás todo o poderio de análise de dados que o R e seus pacotes fornecem. Com esses elementos, já conseguimos construir qualquer tipo de layout e lógica interna.

## Por que aprender Shiny?

Por ser gratuito e por não exigir de largada conhecimento em desenvolvimento Web, o framework Shiny vem sendo cada vez mais utilizado por empresas e por órgãos do governo para acomodar painéis analíticos ou para comunicar resultados de maneira interativa e dinâmica. Programar em Shiny se tornou um grande diferencial para cientistas de dados.

Na pesquisa, o Shiny facilita a colaboração entre cientistas de diferentes áreas e é uma excelente alternativa para aumentar e melhorar a comunicação científica.

## Como criar um exemplo que utilize o shiny?

- Apresentação ou documento: File > New file > R Markdown
- Aplicativo: File > New file > Shiny web app

## Principais características

1. Inputs

Inputs são widgets que possibilitam a interação do usuário com o app.

Exemplos:

- **actionButton**: botão para executar uma ação.
- **checkboxGroupInput**: um grupo de check boxes.
- **checkboxInput**: um único check box.
- **dateInput**: um calendário para seleção de data.
- **dateRangeInput**: um par de calendários para escolher um intervalo de datas.
- **fileInput**: uma ferramenta para auxiliar o upload de arquivos.
- **numericInput**: Um campo para enviar números.
- **radioButtons**: Um conjunto de botões para seleção.
- **selectInput**: Um select box com um conjunto de opções.
- **sliderInput**: Um slider.
- **textInput**: Um campo para enviar texto.

2. Renders

Os outputs devem ser construídos com funções render_(). Existe uma função render_() para cada tipo de objeto.

Exemplos:

- **renderDataTable**: data frames.
- **renderImage**: imagens.
- **renderPlot**: gráficos.
- **renderPrint**: qualquer printed output.
- **renderTable**: data frames, matrizes, e outras estruturas em forma de tabela.
- **renderText**: strings.
- **renderUI**: um elemento do UI ou HTML.

Existem algumas funções exclusivas para gráficos de alguns pacotes, por exemplo, renderPlotly, renderGirafe, renderLeaflet, etc. Ao utilizar algum pacote com gráficos interativos procure a função render adequada.

## Reatividade

O fluxo de reatividade será sempre conduzido por valores e funções reativas. Os objetos dentro da lista input são os principais objetos reativos e as funções render_() são as principais funções reativas.

Um fluxo básico seria o seguinte:

1. O usuário altera o valor do input x;
2. O valor reativo input$x é invalidado;
3. Toda função reativa que depender de input$x é notificada;
4. Essas funções verificam qual é o novo valor de input$x e atualizam suas saídas.

## Fonte

https://www.est.ufmg.br/~cristianocs/Pacotes2021/AulaShiny.html#1
