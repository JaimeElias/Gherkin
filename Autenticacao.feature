#language: pt

Funcionalidade: Autenticação
    Contexto: Abrir login
        Dado que esteja na home
        quando Abrir login

        Esquema do Cenário: Realizar login
            Quando Realizar login com "<user>" e "<senha>" como "<nome>"
            Entao devera ser exibido o nome do usuário no header

            Exemplos:
                |user           |senha|nome|
                |test@automation|123  |Aut |
                |testestestes   |124  |aut2|

        Esquema do Cenário:Realizar login Exception
            Quando Realizar login com "<user>" e "<senha>" como "<nome>"
            Entao devera ser exibida a mensagem de erro "<mensagem>"

            Exemplos:
                |user           |senha |nome|mensagem     |
                |test@automation|000   |Aut |senha errada!|
                |testautomatico |123   |Aut |user errado! |


    Contexto: Abrir Cadastro
        Dado que esteja na home
        Quando abrir Cadastro

        Esquema do Cenário: Realizar Cadastro
            Quando Realizar Cadastro com "<email>" e "<senha>"
            Entao deve mostrar "<mensagem>"

            Exemplos:
                |email           |senha|mensagem                     |
                |teste@automation|123  |Cadastro efetuado com sucesso|

        Esquema do Cenário: Realizar Cadastro Exception
            Quando Realizar Cadastro com "<email>" e "<senha>"
            Entao devera ser exibida a mensagem de erro "<mensagem>"

            Exemplos:
            |email           |senha|mensagem                                                                |
            |testautomatico  |1234 |O Cadastro não foi realizado com sucesso, verifique os dados informados |
            |teste@automation|123  |O email informado ja esta sendo utilizado, verifique os dados informados|