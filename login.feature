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

            Cenário: Login com dados válidos
            Quando eu inserir o usuário "fulano@gmail.com"
            E a senha "senha#2023"
            Então deve direcionar o usuário para a tela de checkout

            Cenário: Login com usuário inválido
            Quando eu inserir o usuario "fulano@gmail.com.brrr"
            E a senha "senha#2023"
            Então deve exibir a mensagem: "Usuário ou senha inválidos"

            Cenário: Login com senha inválida
            Quando eu inserir o usuario "fulano@gmail.com"
            E a senha "senhainvalida#2023"
            Então deve exibir a mensagem: "Usuário ou senha inválidos"

            Esquema do Cenário: Login de múltiplos usuários
            Quando eu inserir o <usuario>
            E a <senha>
            Entao deve exibir a <mensagem>

            Exemplos:
            | usuario                 | senha        | mensagem                                        |
            | "emanuel@gmail.com"     | "senha#2023" | "Olá Emanuel, login realizado com sucesso!"     |
            | "samantha@gmail.com"    | "senha#2023" | "Olá Samantha, login realizado com sucesso!"    |
            | "gabriela@gmail.com"    | "senha#2023" | "Olá Gabriel, login realizado com sucesso!"     |
            | "rafael@gmail.com"      | "senha#2023" | "Olá Rafael, login realizado com sucesso!"      |
            | "lucas@gmail.com"       | "senha#2023" | "Olá Lucas, login realizado com sucesso!"       |
            | "ana_beatriz@gmail.com" | "senha#2023" | "Olá Ana Beatriz, login realizado com sucesso!" |