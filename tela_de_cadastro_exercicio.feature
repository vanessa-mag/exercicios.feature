            #language: pt

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

            Esquema do Cenário: Autenticação de campo obrigatório
            Quando a <informacao> estiver no <campo>
            Então deve exibir na tela a <mensagem>

            Exemplos:
            | informacao          | campo       | mensagem                                  |
            | "Marcelo321"        | "Nome"      | "Digite um Nome válido."                  |
            | "M. Silva"          | "Sobrenome" | "Digite um Sobrenome válido."             |
            | "vazio"             | "Endreço"   | "O campo Enderço é um campo obrigatório." |
            | "jggjaorj"          | "Cidade"    | "Digite uma Cidade válida."               |
            | "88 98899-59"       | "Telefone"  | "Digite um Telefone válido."              |
            | "60777-77760"       | "CEP"       | "Digite um CEP válido."                   |
            | "marcelo2gmail.com" | "Email"     | "Digite um Email válido."                 |