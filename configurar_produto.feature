#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página EBAC-SHOP

Cenário: Critérios do produto
Quando selecionar a cor
E tamanho
E quantidade
Então deve ser adicionado ao carrinho o produto com as características selecionadas

Cenário: Permitir apenas 10 produtos
Quando a quantidade de produtos selecionado chegar a 10
Então deve aparecer uma mensagem de alerta "Limite máximo de produtos atingido!"

Cenário: Botão limpar
Quando clicar no botão limpar
Então os os critérios definidos devem ser excluídos

