class PaymentPage < SitePrism::Page

    element :valor_total_produto, '#total_product'

    element :pagamento_cartao, '.bankwire'

end