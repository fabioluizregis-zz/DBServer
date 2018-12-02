# utf-8
# language: pt

Funcionalidade: Compra
    Eu como um usuário com acesso à internet
    Quero acessar o sistema XPTO
    Para efetuar o cadastro e realizar uma compra

@comprar_item
Cenário: Realizar uma compra com sucesso
    Dado que acesso a página incial do sistema automationpractice
    E adiciono um produto ao carrinho
    E prossigo para o checkout
    E valido que o produto foi adicionado ao carrinho
    E realizo o cadastro do cliente
    E valido o endereço cadastrado
    E valido o valor total da compra
    Quando seleciono um método de pagamento
    Então confirmo a compra
    E verifico que foi finalizada com sucesso