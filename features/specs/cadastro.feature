#language: pt

Funcionalidade: Cadastro
    COMO um usuário do sistema
    QUERO poder fazer um novo cadastro 
    PARA poder logar no sistema

    Contexto: Estar na página de cadastro
        Dado que esteja na página de cadastro

    @registration_sucess
    Cenário: Cadastrar com sucesso
        Quando realizar cadastro com os campos "Barcelos" "barcelos@teste.com" e "1234"
        Então deverá cadastrar com sucesso e ir para home
    
    @registration_not_sucess
    Esquema do Cenário: Cadastrar conta inválida
        Quando realizar cadastro informando os campos "<nome>" "<email>" e "<senha>"
        Então a mensagem é exibida "<msg>"
        Exemplos:
        | nome    | email              | senha | msg                               |
        |         | barcelos@teste.com | 1234  | Nome não pode ficar em branco     |
        |Barcelos |                    | 1234  | Email é obrigatório               |
        |Barcelos | barcelos@teste.com |       | Password não pode ficar em branco |
        |Barcelos | barcelos@teste.com | 1234  | Este email já está sendo usado    |
