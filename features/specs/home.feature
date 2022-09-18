#language: pt

@home
Funcionalidade: Home
    COMO um usuário da ServeRest
    QUERO acessar a home 
    PARA poder verificar os produtos
      
    Contexto:Acessar a home
        Dado que faça login com "barcelos@teste.com" e "1234"
    
    @search_product
    Cenário: Buscar por produto existente
        Quando buscar por produto "logitech" e adicionar ao carrinho
        Então devo ver a lista de compras

    Cenário: Buscar por produto inexistente
        Quando buscar por produto "inexistente"
        Então deve apresentar a mensagem nenhum produto foi encontrado
