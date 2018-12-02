class HomePage < SitePrism::Page

    set_url 'http://www.automationpractice.com'

    elements :lista_de_produtos, '.product-name'
    element :botao_pesquisa, '.button-search'

end