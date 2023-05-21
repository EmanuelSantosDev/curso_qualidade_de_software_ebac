            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho, gosto e quantidade
            Para depois inserir no carrinho

            # Critérios de Aceitação
            # 1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
            # 2 – Deve permitir apenas 10 produtos por venda
            # 3 – Quando eu clicar no botão “limpar” deve voltar ao estado original

            Contexto:
            Dado que eu acesse a página do produto XPTO na EBAC-SHOP

            Cenário: Adicionar produto ao carrinho com sucesso
            Quando eu selecionar a cor "Verde"
            E o tamanho "P"
            E inserir a quantidade "3"
            E clicar no botão "Adicionar ao carrinho"
            Então deve exibir a mensagem: "Produto adicionado ao carrinho"
            E atualizar o ícone do carrinho destacando a quantidade de produtos inseridas no mesmo

            Cenário: Tentar adicionar produto ao carrinho sem selecionar a opção COR
            Quando eu selecionar o tamanho "M"
            E inserir a quantidade "5"
            E clicar no botão "Adicionar ao carrinho"
            Então deve exibir a mensagem: "Campo obrigatório não preenchido"
            E destacar o campo obrigatório a ser preenchido

            Cenário: Tentar adicionar produto ao carrinho sem selecionar a opção de TAMANHO
            Quando eu selecionar a cor "Vermelho"
            E inserir a quantidade "1"
            E clicar no botão "Adicionar ao carrinho"
            Então deve exibir a mensagem: "Campo obrigatório não preenchido"
            E destacar o campo obrigatório a ser preenchido

            Cenário: Tentar adicionar produto ao carrinho sem selecionar a opção de TAMANHO e de COR
            Quando eu inserir a quantidade "7"
            E clicar no botão "Adicionar ao carrinho"
            Então deve exibir a mensagem: "Campos obrigatórios não preenchidos"
            E destacar os campos obrigatórios a serem preenchidos

            Cenário: Tentar adicionar produto ao carrinho preenchendo uma QUANTIDADE INVÁLIDA
            Quando eu selecionar a cor "azul"
            E o tamanho "G"
            E inserir a quantidade "12"
            E clicar no botão "Adicionar ao carrinho"
            Então deve exibir a mensagem: "Quantidade máxima de 10 items para compra excedida"
            E destacar o campo a ser ajustado

            Esquema do Cenário: Resetar configurações do produto
            Quando eu selecionar a <cor>
            E o <tamanho>
            E inserir a <quantidade>
            E clicar no botão "Limpar"
            Então deve resetar as configurações do produto XPTO para o seu status inicial

            Exemplos:
            | cor        | tamanho | quantidade |
            | "azul"     | "P"     | "1"        |
            | "vermelho" | "M"     | "3"        |
            | "verde"    | "G"     | "6"        |
            | "amaralo"  | "GG"    | "10"       |
