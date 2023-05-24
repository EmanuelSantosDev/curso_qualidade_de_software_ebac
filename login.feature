#language: pt

Funcionalidade: Login na Plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

# Critérios de Aceitação:
# 1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
# 2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Contexto:
Dado que eu acesse a página de login da EBAC-SHOP

Cenário: Autenticação com dados válidos
Quando eu preencher os campos obrigatórios com dados válidos
Então eu serei direcionado para a tela de checkout

Cenário: Tentativa de autenticação com dados inválidos
Quando eu preencher os campos obrigatórios com dados inválidos
Então será emitindo um alerta pelo sistema informando "Usuário ou senha inválidos"