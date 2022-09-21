Dado('que esteja na página de login') do
    @login_page = Login.new
    @login_page.load
end
  
Quando('eu fizer o login com {string} e {string}') do |string, string2|
    email = Factory::Static.static_data(string)
    password = Factory::Static.static_data(string2)
    @login_page.insert_login(email, password)
end
  
Então('devo logar com sucesso para área da home') do
    @home_page = Home.new
end

Quando('eu realizar o login com {string} e {string}') do |string, string2|
    email = Factory::Static.static_data(string)
    password = Factory::Static.static_data(string2)
    @login_page.insert_login(email, password)
end
  
Então('deve ser apresentada a mensagem {string}') do |string|
    expect(@login_page).to have_content string
end



