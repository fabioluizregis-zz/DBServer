class ShippingPage < SitePrism::Page

    element :termos_e_condicoes, '#uniform-cgv'
    element :frete, 'div[class=delivery_option_price]'

    element :botao_checkout, 'button[name=processCarrier]'

end