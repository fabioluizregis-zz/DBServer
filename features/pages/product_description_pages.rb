class ProductDescription < SitePrism::Page

    element :nome_do_item, 'h1[itemprop=name]'
    element :preco_do_item, '#our_price_display'
    element :botao_submit, 'button[name=Submit]'

end