# language: pt
Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

  Contexto: 
    Dado que eu acesse a plataforma de compras EBAC-SHOP

  Cenário: Cadastro válido
    Quando todos os campos obrigatórios for preenchidos corretamente
    E clicar em finalizar compra
    Então o cadastro deve ser finalizado

  Esquema do Cenário: Autenticação dos campos obrigatório
    Quando todos campos obrigatorios <Nome>, <País>, <Endereço>, <Cidade>, <CEP>, <Telefone> e <email> for preenchidos
    E o botão Finalizar Compra for selecionado
    Então deve exibir na tela a <mensagem>

    Exemplos: 
      | Nome      | País     | Endereço                | Cidade      | CEP       | Telefone      | email               | Mensagem                                   |
      | "Marcel@" | "Brasil" | "Rua 25 de Março, 1824" | "São Paulo" | 60123-003 | (11)3245-8899 | "marcelo@gmail.com" | "Digite um Nome válido."                   |
      | "Marcelo" | "BR"     | "Rua 25 de Março, 1824" | "São Paulo" | 60123-003 | (11)3245-8899 | "marcelo@gmail.com" | "Digite um país válido."                   |
      | "Marcelo" | "Brasil" | "Vazio"                 | "São Paulo" | 60123-003 | (11)3245-8899 | "marcelo@gmail.com" | "O campo Endereço é um campo obrigatório." |
      | "Marcelo" | "Brasil" | "Rua 25 de Março, 1824" | "SãoPaulo"  | 60123-003 | (11)3245-8899 | "marcelo@gmail.com" | "Digite uma Cidade válida."                |
      | "Marcelo" | "Brasil" | "Rua 25 de Março, 1824" | "São Paulo" |  0123-003 | (11)3245-8899 | "marcelo@gmail.com" | "Digite um CEP válido."                    |
      | "Marcelo" | "Brasil" | "Rua 25 de Março, 1824" | "São Paulo" | 60123-003 | (1)3245-8899  | "marcelo@gmail.com" | "Digite um Telefone válido."               |
      | "Marcelo" | "Brasil" | "Rua 25 de Março, 1824" | "São Paulo" | 60123-003 | (11)3245-8899 | "marcelogmail.com"  | "Digite um Email válido."                  |
