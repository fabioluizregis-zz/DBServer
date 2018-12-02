class PaginaCadastro < SitePrism::Page

    element :radio_senhor, '#id_gender1'
    element :radio_senhora, '#id_gender2'

    element :first_name, '#customer_firstname'
    element :last_name, '#customer_lastname'
    
    element :email, '#email'

    element :password, '#passwd'

    def data_nascimento(dia, mes, ano)
        find('#uniform-days').click
        find('#uniform-days').select(dia)

        find('#uniform-months').click
        find('#uniform-months').select(mes)

        find('#uniform-years').click
        find('#uniform-years').select(ano)
    end

    element :optin_newsletter, '#uniform-newsletter'
    element :optin_special_offers, '#uniform-optin'

    element :company, '#company'

    element :endereco, '#address1'
    element :complemento, '#address2'
    element :cidade, '#city'

    def seleciona_estado(estado_desejado)
        find('#uniform-id_state').click
        find('#uniform-id_state').select(estado_desejado)
    end

    element :cep, '#postcode'
    elements :pais, '#id_country'

    element :telefone, '#phone'
    element :celular, '#phone_mobile'

    element :apelido_endereco, '#alias'

    element :botao_registro, '#submitAccount'


end