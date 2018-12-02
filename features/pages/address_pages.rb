class  AddressPage < SitePrism::Page

    elements :endereco_entrega, 'li[class="address_address1 address_address2"]'

    element :botao_checkout, 'button[name=processAddress]'

end