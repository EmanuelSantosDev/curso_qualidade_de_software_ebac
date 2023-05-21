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
            Dado que o usuário esteja na tela de Checkout

            Esquema do Cenário: Conclusão de cadastro de múltiplos usuários
            Quando eu preencher o <nome>
            E o <sobrenome>
            E o <pais>
            E o <endereco>
            E a <cidade>
            E o <cep>
            E o <telefone>
            E o <endereco_de_email>
            E clicar no botão "FINALIZAR COMPRA"
            Entao deve exibir a <mensagem>

            Exemplos:
            | nome      | sobrenome     | pais     | endereco                                    | cidade           | cep         | telefone      | endereco_de_email            | mensagem                                          |
            | "Emanuel" | "Santos"      | "Brasil" | "Rua XYZ, nº 90, Bairro dos Encantados"     | "Porto Alegre"   | "99999-999" | "51999999999" | "emanuelxpto@gmail.com"      | "Parabéns Emanuel! Compra concluída com sucesso!" |
            | "Joaquim" | "Silva"       | "Brasil" | "Rua dos Alagados, 1230"                    | "Rio de Janeiro" | "77777-777" | "54878787878" | "joaquim_silva#gmail.com.br" | "Atenção! Formato de e-mail invalido"             |
            | "Sabrina" | "Albuquerque" |          |                                             |                  |             |               | "sabrina@gmail.com.br"       | "Atenção! Campos Obrigatórios não preenchidos"    |
            | "Susane"  | "Alves"       | "Brasil" | "Rua das Hortênsias, nº 10, Bairro Salomão" | "Curitiba"       | "88888-888" | "43888888888" | "susanexpto@gmail.com"       | "Parabéns Susane! Compra concluída com sucesso!"  |
