#language: pt

Funcionalidade: Cadastro
    COMO um usuário do sistema
    QUERO poder fazer um novo cadastro 
    PARA poder logar no sistema

    Contexto: Estar na página de cadastro
        Dado que esteja na página de cadastro

    @registration_sucess
    Cenário: Cadastrar com sucesso
        Quando realizar cadastro com os campos "name" "email" e "password"
        Então deverá cadastrar com sucesso e ir para home
    
    @registration_not_sucess
    Esquema do Cenário: Cadastrar conta inválida
        Quando realizar cadastro informando os campos "<nome>" "<email>" e "<senha>"
        Então a mensagem é exibida "<msg>"
        Exemplos:
        | nome    | email              | password  | msg                               |
        |         | email              | password  | Nome não pode ficar em branco     |
        |name     |                    | password  | Email é obrigatório               |
        |name     | email              |           | Password não pode ficar em branco |
        |name     | email              | password  | Este email já está sendo usado    |
