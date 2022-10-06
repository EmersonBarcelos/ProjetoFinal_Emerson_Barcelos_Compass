class Cadastro < SitePrism::Page
    set_url '/cadastrarusuarios'

    element  :input_name, '#nome'
    element  :input_email, '#email'
    element  :input_password, '#password'
    element  :check_adm, '#administrador'

    def insert_cad(name, email, password, administrator)
        input_name.set name
        input_email.set email
        input_password.set password
        check_adm.click if administrator == true
        click_button 'Cadastrar'
    end
end