#language: pt 

Funcionalidade: Produtos
    Contexto: Seleção de Produtos
        Dado que esteja na home

        Cenário: Seleção de produto pela home
            Quando abrir a pagina do produto "Whisky"
            E adicionar ao carrinho
            Entao o produto devera ser exibido no carrinho
    
        Cenário: Seleção de produto pela busca
            Quando pesquisar na barra pelo produto "Chocolate"
            E abrir a pagina do produto
            E adicionar ao carrinho
            Entao o produto devera ser exibido no carrinho

        Cenário: Seleção de produto pela compra rapida
            Dado que esteja na barra de busca
            Quando abrir compra rapida
            E pesquisar na compra rapida pelos produtos "arroz","feijao","cebola"
            E abrir a pagina de cada produto
            E adicionar ao carrinho
            Entao os produtos deverão ser exibidos no carrinho
        
        Cenário: Seleção de produto por departamento
            Quando selecionar o "<departamento>"
            E selecionar a "<categoria>"
            E selecionar a "<subcategoria>"
            E abrir a pagina do "<produto>"
            E adicionar ao carrinho
            Entao deverá ser exibido o produto no carrinho

            Exemplos:
                |departamento        |categoria      |subcategoria    |produtos             |
                |especiais           |mundo saudável |sem glúten      |farinha de arroz     |
                |alimentos e bebidas |Adega          |kits com vinho  |combo queijos e vinho|

        Cenário: Seleção de produto por sugestão
            Quando pesquisar na barra pelo produto "agua"
            E acessar a pagina do produto sugerido
            E adicionar ao carrinho
            Entao devera ser exibido o produto no carrinho

        Cenário: Seleção de produto pelo eletro-bazar
            Quando abrir eletro-bazar
            E acessar a pagina dos produtos com desconto
            E adicionar um ao carrinho
            Entao devera ser exibido o produto no carrinho