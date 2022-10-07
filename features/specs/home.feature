#language: pt

@home
Funcionalidade: Home
    COMO um usuário da ServeRest
    QUERO acessar a home 
    PARA poder verificar os produtos
      
    Contexto:Acessar a home
        Dado que faça login com "email" e "password"
    
    @search_product
    Cenário: Buscar por produto existente
        Quando buscar por produto da loja "produto"
        Então devo ver o produto

    @search_product_nonexistent
    Cenário: Buscar por produto inexistente
        Quando buscar por produto "inexistente"
        Então deve apresentar a mensagem nenhum produto foi encontrado

    @add_Shoppinglist
    Cenário: Adicionar produto a lista de compras
        Quando adicionar um produto a lista de compras
        Então devo ver o produto na lista de compras