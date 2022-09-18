Dado('que esteja na página de cadastro') do
    @cadastro_page = Cadastro.new
    @cadastro_page.load
end
  
Quando('realizar cadastro com os campos {string} {string} e {string}') do |string, string2, string3|
    @cadastro_page.insert_cad(string, string2, string3)
end
  
Então('deverá cadastrar com sucesso e ir para home') do
    @home_page = Home.new
end

Quando('realizar cadastro informando os campos {string} {string} e {string}') do |string, string2, string3|
    @cadastro_page.insert_cad(string, string2, string3)
end
  
Então('a mensagem é exibida {string}') do |string|
    expect(@cadastro_page).to have_content string
end
# # Dado('que esteja na página de cadastro') do
# #     @login_page = Login.new
# #     @login_page.load
# #     @cadastro_page = Cadastro.new
# # end
  
# # Quando('realizar cadastro informando os campos {string} {string} e {string}') do |string, string2, string3|
# #     @cadastro_page.insert_cad(string, string2, string3)
# # end
  
# # # Então('a mensagem é exibida {string}') do |string|
# # #     expect(@cadastro_page.insert_cad).to include('Nome é obrigatório')
# # # end