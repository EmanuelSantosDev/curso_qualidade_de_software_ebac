            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            # Critérios de Aceitação
            # 1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
            # 2 – Deve permitir apenas 10 produtos por venda
            # 3 – Quando eu clicar no botão “limpar” deve voltar ao estado original

            Contexto:
            Dado que eu acesse a página do produto na EBAC-SHOP
            E o produto permita a seleção de no máximo 10 items por compra

            Cenário: Adicionar produto ao carrinho com os campos obrigatórios preenchidos
            Quando eu selecionar a <cor>
            E selecionar o <tamanho>
            E selecionar a <quantidade>
            E clicar em "Adicionar ao Carrinho"
            Então deve exibir a mensagem: "Produto adicionado ao carrinho"

            Cenário: Tentar adicionar produto ao carrinho sem preencher o campo COR
            Quando selecionar o <tamanho>
            E selecionar a <quantidade>
            E clicar em "Adicionar ao Carrinho"
            Então deve exibir a mensagem: "Campo obrigatório não preenchido"

            Cenário: Tentar adicionar produto ao carrinho sem preencher o campo TAMANHO
            Quando eu selecionar a <cor>
            E selecionar a <quantidade>
            E clicar em "Adicionar ao Carrinho"
            Então deve exibir a mensagem: "Campo obrigatório não preenchido"

            Cenário: Tentar adicionar produto ao carrinho sem preencher o campo QUANTIDADE
            Quando eu selecionar a <cor>
            E selecionar o <tamanho>
            E clicar em "Adicionar ao Carrinho"
            Então deve exibir a mensagem: "Campo obrigatório não preenchido"

            Esquema do Cenário: Resetar as configurações do produto
            Quando eu selecionar a <cor>
            E selecionar o <tamanho>
            E selecionar a <quantidade>
            E clicar em "Limpar"
            Então todas as opções preenchidas deverão ser resetadas ao seu status inicial

            Exemplos:
            | cor        | tamanho | quantidade |
            | "azul"     | "P"     | "1"        |
            | "vermelho" | "M"     | "3"        |
            | "verde"    | "G"     | "6"        |
            | "amaralo"  | "GG"    | "10"       |