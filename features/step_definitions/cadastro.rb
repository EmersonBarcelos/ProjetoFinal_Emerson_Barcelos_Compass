Dado('que esteja na página de cadastro') do
    @cadastro_page = Cadastro.new
    @cadastro_page.load
end
  
Quando('realizar cadastro com os campos {string} {string} e {string}') do |string, string2, string3|
    nome = Factory::Static.static_data(string)
    email = Factory::Static.static_data(string2)
    senha = Factory::Static.static_data(string3)
    @cadastro_page.insert_cad(nome, email, senha)
end
  
Então('deverá cadastrar com sucesso e ir para home') do
    @home_page = Home.new
end

Quando('realizar cadastro informando os campos {string} {string} e {string}') do |string, string2, string3|
    nome = Factory::Static.static_data(string)
    email = Factory::Static.static_data(string2)
    senha = Factory::Static.static_data(string3)
    @cadastro_page.insert_cad(nome, email, senha)
end
  
Então('a mensagem é exibida {string}') do |string|
    expect(@cadastro_page).to have_content string
end