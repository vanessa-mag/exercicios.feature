# language: pt
Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

  Contexto: 
    Dado que eu acesse a tela de checkout

  Cenário: Cadastro válido
    Quando todos os campos obrigatórios for preenchidos corretamente
    E clicar em finalizar compra
    Então o cadastro deve ser validado pelo sistema

  Esquema do Cenário: Autenticação dos campos obrigatório
    Quando eu preenchero o <Nome>, <País>, <Endereco>, <Cidade>, <CEP>, <Telefone> e <email>
    E clicar no botão Finalizar Compra
    Então deve exibir na tela a <mensagem>

    Exemplos: 
      | Nome      | País     | Endereço                | Cidade      | CEP       | Telefone      | email               | Mensagem                                  |
      | "Marcel@" | "Brasil" | "Rua 25 de Março, 1824" | "São Paulo" | 60123-003 | (11)3245-8899 | "marcelo@gmail.com" | "Digite um Nome válido."                  |
      | "Marcelo" | "Vazio"  | "Rua 25 de Março, 1824" | "São Paulo" | 60123-003 | (11)3245-8899 | "marcelo@gmail.com" | "O campo país é um campo obrigatório."    |
      | "Marcelo" | "Brasil" | "Vazio"                 | "São Paulo" | 60123-003 | (11)3245-8899 | "marcelo@gmail.com" | "O campo Enderço é um campo obrigatório." |
      | "Marcelo" | "Brasil" | "Rua 25 de Março, 1824" | "SãoPaulo"  | 60123-003 | (11)3245-8899 | "marcelo@gmail.com" | "Digite uma Cidade válida."               |
      | "Marcelo" | "Brasil" | "Rua 25 de Março, 1824" | "São Paulo" |  0123-003 | (11)3245-8899 | "marcelo@gmail.com" | "Digite um CEP válido."                   |
      | "Marcelo" | "Brasil" | "Rua 25 de Março, 1824" | "São Paulo" | 60123-003 | (1)3245-8899  | "marcelo@gmail.com" | "Digite um Telefone válido."              |
      | "Marcelo" | "Brasil" | "Rua 25 de Março, 1824" | "São Paulo" | 60123-003 | (11)3245-8899 | "marcelogmail.com"  | "Digite um Email válido."                 |
