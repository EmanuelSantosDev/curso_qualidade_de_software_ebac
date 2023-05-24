#languague: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

# Critérios de Aceitação:
# 1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
# 2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
# 3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

Contexto:
Dado que eu esteja na tela de checkout

Cenário: Cadastro válido
Quando eu preencher todos os campos obrigatórios marcados com asterisco
Então a minha compra será finalizada com sucesso

Cenário: Cadastro com campos obrigatórios preenchidos parcialmente
Quando eu preencher parcialmente os campos obrigatórios marcados com asterisco
Então o sistema deverá exibir uma mensagem informando: "Campos obrigatórios não preenchidos"

Cenário: Cadastro com campo de e-mail em formato inválido
Quando eu preencher o campo de e-mail com um formato inválido
Então o sistema devera exibir uma mensagem de alerta informando: "Formato de e-mail incorreto"