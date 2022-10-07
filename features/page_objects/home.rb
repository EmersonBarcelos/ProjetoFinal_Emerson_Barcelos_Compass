class Home < SitePrism::Page
    set_url "/home"
    
    element :search_field, 'input[data-testid="pesquisar"]'
    element :button_add, 'input[data-testid="adicionarNaLista"]'

    def search_product(product)
        search_field.set product
        click_button 'Pesquisar'
    end

    def add_list
        button_add.click
    end
end