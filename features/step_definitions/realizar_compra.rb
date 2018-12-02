Dado("que acesso a página incial do sistema automationpractice") do
    @resultados = HomePage.new
    @resultados.load
end
  
Dado("adiciono um produto ao carrinho") do
    @resultados.botao_pesquisa.click

    @resultados.lista_de_produtos.first.click

    @pagina_produto = ProductDescription.new
    @pagina_produto.botao_submit.click
end
  
Dado("prossigo para o checkout") do
    @resumo_checkout = ResumoDoItem.new
    @resumo_checkout.botao_checkout.click
end
  
Dado("valido que o produto foi adicionado ao carrinho") do
    @resumo_carrinho = ResumoDoCarrinho.new

    #Guardando preço total do carrinho para validar na página de checkout do cartão
    @preco_total_itens = @resumo_carrinho.preco_do_item.text

    @resumo_carrinho.botao_checkout.click
end
  
Dado("realizo o cadastro do cliente") do
    @criar_conta = Autentication.new

    @first_name = Faker::Name.first_name
    @last_name = Faker::Name.last_name
    @email_cadastro = "#{@first_name}.#{@last_name}@desafio.flr"
    @email_cadastro = @email_cadastro.downcase
    @senha = "123456"
    @address1 = Faker::Address.street_address
    @fone1 = Faker::PhoneNumber.cell_phone #=> "(186)285-7925"
    @fone2 = Faker::PhoneNumber.cell_phone #=> "(186)285-7925"
    
    
    @criar_conta.email_criacao.set(@email_cadastro)
    @criar_conta.botao_criar_conta.click

    @cadastro = PaginaCadastro.new

    @cadastro.radio_senhor.click

    @cadastro.first_name.set(@first_name)
    @cadastro.last_name.set(@last_name)
    
    @cadastro.password.set(@senha)

    @cadastro.data_nascimento(17, "October", 1979)

    @cadastro.optin_newsletter.click         
    @cadastro.optin_special_offers.click         

    @cadastro.company.set("DBServer") 

    @cadastro.endereco.set(@address1)
    @cadastro.cidade.set("Auburn")
    @cadastro.seleciona_estado("Alabama")
    @cadastro.cep.set("12345")

    @cadastro.telefone.set(@fone1) 
    @cadastro.celular.set(@fone2)

    @cadastro.apelido_endereco.set("Meu endereco")

    @cadastro.botao_registro.click
end
  
Dado("valido o endereço cadastrado") do

    @enderecos = AddressPage.new
    
    #confirmando endereço de entrega
    expect(@enderecos.endereco_entrega.first.text).to eql @address1

    @enderecos.botao_checkout.click

    @entrega = ShippingPage.new

    @entrega.termos_e_condicoes.click
    @entrega.botao_checkout.click
end
  
Dado("valido o valor total da compra") do
    @pagamento = PaymentPage.new
    expect(@pagamento.valor_total_produto.text).to eql @preco_total_itens
end
  
Quando("seleciono um método de pagamento") do
   
    @pagamento.pagamento_cartao.click

end
  
Então("confirmo a compra") do
    @confirma_compra = OrderSummaryPage.new
    @confirma_compra.botao_checkout.click
end
  
  Então("verifico que foi finalizada com sucesso") do
    expect(page).to have_content("Your order on My Store is complete.")
  end