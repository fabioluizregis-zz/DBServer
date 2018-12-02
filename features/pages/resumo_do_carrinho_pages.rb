class ResumoDoCarrinho < SitePrism::Page

    element :nome_do_item, 'p[class=product-name]'
    element :preco_do_item, '#total_product'

    element :botao_checkout, '.button.btn.btn-default.standard-checkout.button-medium'

end