# Introdução ao Shiny

## Reatividade

O fluxo de reatividade será sempre conduzido por valores e funções reativas. Os objetos dentro da lista input são os principais objetos reativos e as funções render_() são as principais funções reativas.

Um fluxo básico seria o seguinte:

1. O usuário altera o valor do input x;
2. O valor reativo input$x é invalidado;
3. Toda função reativa que depender de input$x é notificada;
4. Essas funções verificam qual é o novo valor de input$x e atualizam suas saídas.
