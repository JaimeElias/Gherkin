#language: pt

Funcionalidade: Autenticação
    Contexto: Abrir login
        Dado que esteja na home
        Quando Abrir login

        Esquema do Cenário: Realizar login
            Quando Realizar login com "<user>" e "<senha>" como "<nome>"
            Entao devera ser exibido o nome do usuário no header

            Exemplos:
                |user           |senha|nome|
                |test@automation|123  |Aut |

        Esquema do Cenário:Realizar login Exception
            Quando Realizar login com "<user>" e "<senha>" como "<nome>"
            Entao devera ser exibida a mensagem de erro "<mensagem>"

            Exemplos:
                |user           |senha |nome|mensagem                  |
                |test@automation|000   |Aut |login ou senha Invalido!  |
                |testautomatico |123   |Aut |email ou cpf/cnpj Invalido|


    Contexto: Abrir Cadastro
        Dado que esteja na home
        Quando abrir login
        Entao deve abrir Cadastro

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
            |email             |senha             |mensagem                      |
            |email valido      |senha invalida    |login ou senha invalidos!     |
            |email invalido    |senha valida      |email ou cpf/cnpj Invalido!   |
            |email ja utilizado|senha             |email ou cpf/cnpj ja utilizado|
            |cpf invalido      |senha             |email ou cpf/cnpj Invalido!   |
            |cnpj invalido     |senha             |email ou cpf/cnpj Invalido!   |