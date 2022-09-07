            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a tela de cadastro

            Cenário: Cadastro válido
            Quando todos os campos obrigatórios forem preenchidos corretamente
            E concluir o cadastro
            Então será possivel finalizar a compra

            Esquema do Cenário: Autenticação de multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha> no espaço <campo>
            Então deve exibir na tela a <mensagem>

            Exemplos:
            | usuario                 | senha     | mensagem           |
            | "maria123@@ebac.com.br" | "123"     | "Email inválido"   |
            | "pedro@ebac.com.br"     | "!@#$%¨*" | "Senha inválida"   |
            | vazio                   | "123"     | "Preencha o campo" |
            | "rafael123@ebac.com.br" | vazio     | "Preencha o campo" |