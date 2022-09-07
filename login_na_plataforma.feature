#language: pt

Funcionalidade: Autenticação de login
Como cliente da EBAC-SHOP
Quero fazer o login autenticação na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse área de login da página EBAC-SHOP

Cenário: Login válido
Quando inserir um email válido
E uma senha válida
Então deve ser direcionado para tela de checkout

Cenário: Login inválido
Quando inserir um email válido
E uma senha inválida
Então deve exibir a seguinte mensagem de alerta "Usuário ou senha invalidos"


