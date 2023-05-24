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
Dado que eu acesse a página de vendas do produto XPTO
E o formulário esteja configurado para permitir a seleção de no máximo 10 items do respectivo produto

Cenário: Preencher parcialmente os campos obrigatórios
Quando eu preencher parcialmente os campos obrigatórios
Então o sistema deve emitir um alerta informando "Campos obrigatórios não preenchidos"

Esquema do Cenário: Inserir produto no carrinho com sucesso
Quando eu selecionar a <cor>, o <tamanho> e a <quantidade>
Então o produto é adicionado ao carrinho

Esquema do Cenário: Resetar as configurações de compra
Quando eu selecionar a <cor>, o <tamanho> e a <quantidade>
E clicar no botão "limpar"
Então todas as configurações do produto são resetadas para o seu estado original

Exemplos:
| cor        | tamanho | quantidade |
| "verde"    | "P"     | "1"        |
| "amarelo"  | "M"     | "3"        |
| "vermelho" | "G"     | "5"        |
| "azul"     | "G"     | "8"        |
| "branco"   | "XXG"   | "10"       |
