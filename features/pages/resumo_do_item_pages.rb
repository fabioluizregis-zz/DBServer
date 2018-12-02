class ResumoDoItem < SitePrism::Page

    element :nome_do_item, '#layer_cart_product_title'
    element :preco_do_item, '#layer_cart_product_price'
    element :botao_checkout, '.btn.btn-default.button.button-medium'

end