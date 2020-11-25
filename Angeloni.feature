#language: pt

Funcionalidade: pesquisar produto no site Angeloni
    Contexto: Abrir mercado Angeloni e escolher um produto
        Dado acessar a pagina do mercado Angeloni
        Quando Abrir o primeiro departamento
        E os produtos são mostrados
        Então selecionar o primeiro produto mostrado 