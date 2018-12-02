#######################################################################################
#                                                                                     #
# Projeto: Automação de um fluxo de compra no site http://www.automationpractice.com  #
#                                                                                     #
# Nome: Fabio Luiz Régis                                                              #
# Data: 02/12/2018                                                                    # 
#                                                                                     #
#######################################################################################

# Tecnologia e Ferramentas utilizadas:
    - Ruby : Versão 2.3.3p222 (2016-11-21 revision 56859) [i386-mingw32]
    - Visual Studio Code : Versão 1.29.1
    - CMDer : Versão 180528 preview
    - GoogleChrome : Versão 70.0.3538.110 (Versão oficial) 64 bits
    - Chromedriver : Versão 2.44
    - Git : Versão 2.18.0.windows.1
    - Cucumber : Versão 3.1.2
    - Bundler : Versão 1.17.1
    - Windows : Versão 10 Home Edition

# Instalação das ferramentas necessárias
    - Ruby
        - Acessar o endereço https://rubyinstaller.org/downloads/ e baixar o instalador da versão correspondente
        - Instalar no diretório padrão sugerido pela ferramenta

    - Visual Studio Code
        - Acessar o endereço https://code.visualstudio.com/ e baixar a última versão estável
        - Instalar no diretório padrão sugerido pela ferramenta

    - CMDer
        - Acessar o endereço http://cmder.net/ e baixar a última versão FULL
        - Instalar no diretório padrão sugerido pela ferramenta

    - GoogleChrome
        - Acessar o endereço https://www.google.com/chrome/ e baixar a última versão
        - Instalar no diretório padrão sugerido pela ferramenta

    - ChromeDriver
        - Acessar o endereço http://chromedriver.chromium.org/downloads e baixar a última versão
        - Descompactar o arquivo e colocar na raiz da pasta C:\Windows

    - Git
        - Acessar o endereço https://git-scm.com/download/win e baixar a última versão
        - Instalar no diretório padrão sugerido pela ferramenta

    - Bundler
        - Com o CMDer aberto, digitar o comando abaixo:
            - gem install bundler

# Executando o projeto
    - Após clonar o projeto em sua máquina:
        - abrir a pasta do projeto no Visual Studio Code caso queira inspecionar o código
        - abrir o CMDer e acessar a pasta do projeto
            - digitar o comandos
                 $ gem install bundler
                 $ bundle  
    
    O bundle instala todas as dependências/bibliotecas do projeto

    - Comandos para executar o projeto:
        - Para uma execução simples, digitar o comando abaixo:
            $ cucumber

        - Para uma execução com geração de relatório html, digitar o comando abaixo:
            $ cucumber -f html -o evidencia.html

        Um arquivo "evidencia.html" será gerado ao término da execução e poderá ser visualizado em qualquer browser.

# Exemplo de Execução
    - Caso queira ver a execução da automação acontecendo antes de instalar todas as ferramentas, 
      gravei um vídeo da execução da automação do meu computador.
      O video se encontra na raiz do projeto no arquivo "execucao.mp4"

                

