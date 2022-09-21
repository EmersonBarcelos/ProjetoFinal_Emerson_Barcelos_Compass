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
        Quando eu fizer o login com "email" e "password"
        Então devo logar com sucesso para área da home     
    
    @login_not_sucess
    Esquema do Cenário: Login inválido
         Quando eu realizar o login com "<email>" e "<senha>"
         Então deve ser apresentada a mensagem "<msg>"
         Exemplos:
         | email                      | senha           |  msg                               |
         | email                      | password_invalid|  Email e/ou senha inválidos        |
         |                            | password        |  Email é obrigatório               |
         | email                      |                 |  Password não pode ficar em branco |
