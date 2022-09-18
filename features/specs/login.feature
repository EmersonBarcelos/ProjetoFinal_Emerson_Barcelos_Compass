#language: pt

@login
Funcionalidade: Login
    COMO um usuário da ServeRest
    QUERO poder logar no sistema 
    PARA poder verificar os produtos
    
    Contexto: Estar na página de login
        Dado que esteja na página de login

    @login_sucess
    Cenário: Logar com sucesso
        Quando eu fizer o login com "barcelos@teste.com" e "1234"
        Então devo logar com sucesso para área da home     
    
    @login_not_sucess
    Esquema do Cenário: Login inválido
         Quando eu realizar o login com "<email>" e "<senha>"
         Então deve ser apresentada a mensagem "<msg>"
         Exemplos:
         | email                      | senha           |  msg                               |
         | barcelos@teste.com         | 0000            |  Email e/ou senha inválidos        |
         | invalido@teste.com         | 1234            |  Email e/ou senha inválidos        |
         |                            | 1234            |  Email é obrigatório               |
         | barcelos@teste.com         |                 |  Password não pode ficar em branco |
