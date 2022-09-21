Dado('que faça login com {string} e {string}') do |string, string2|
    @login_page = Login.new
    @login_page.load
    email = Factory::Static.static_data(string)
    password = Factory::Static.static_data(string2)
    @login_page.insert_login(email, password)
    @home_page = Home.new
end

#Verificar produtos existentes
Quando('buscar por produto {string} e adicionar ao carrinho') do |string|
    @home_page.search_product(string)
end
  
Então('devo ver a lista de compras') do
    @carrinho_page = Carrinho.new
end

#Verificar produto inexistente
Quando('buscar por produto {string}') do |string|
    @home_page.search_product(string)
end
  
Então('deve apresentar a mensagem nenhum produto foi encontrado') do
    expect(@home_page).to have_content "Nenhum produto foi encontrado"
end 