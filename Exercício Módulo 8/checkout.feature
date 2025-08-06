            #language: pt

            Funcionalidade: Cadastro no checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou no checkout e não possuo cadastro

            Esquema do Cenário: Validação do preenchimento dos campos obrigatórios
            Quando o usuário preencher os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>, <telefone> e <email> e clicar no botão "Finalizar Compra"
            Então o sistema deve exibir a mensagem <mensagem>

            Exemplos:
            | nome      | sobrenome | pais   | endereco  | cidade    | CEP       | telefone        | email                 | mensagem                                           |
            |           |           |        |           |           |           |                 |                       | Por favor preencher os campos obrigatórios         |
            |           | Falco     | Brasil | Rua Teste | São Paulo | 12345-678 | (11) 99999-9999 | guilherme@ebac.com.br | O campo Nome é obrigatório!                        |
            | Guilherme |           | Brasil | Rua Teste | São Paulo | 12345-678 | (11) 99999-9999 | guilherme@ebac.com.br | O campo Sobrenome é obrigatório!                   |
            | Guilherme | Falco     |        | Rua Teste | São Paulo | 12345-678 | (11) 99999-9999 | guilherme@ebac.com.br | O campo País é obrigatório!                        |
            | Guilherme | Falco     | Brasil |           |           | 12345-678 | (11) 99999-9999 | guilherme@ebac.com.br | O campo Endereço é obrigatório!                    |
            | Guilherme | Falco     | Brasil | Rua Teste |           | 12345-678 | (11) 99999-9999 | guilherme@ebac.com.br | O campo Cidade é obrigatório!                      |
            | Guilherme | Falco     | Brasil | Rua Teste | São Paulo |           | (11) 99999-9999 | guilherme@ebac.com.br | O campo CEP é obrigatório!                         |
            | Guilherme | Falco     | Brasil | Rua Teste | São Paulo | 12345-678 |                 | guilherme@ebac.com.br | O campo Telefone é obrigatório!                    |
            | Guilherme | Falco     | Brasil | Rua Teste | São Paulo | 12345-678 | (11) 99999-9999 |                       | O campo E-mail é obrigatório!                      |
            | Guilherme | Falco     | Brasil | Rua Teste | São Paulo | 12345-678 | (11) 99999-9999 | guilherme             | E-mail informado inválido!                         |
            | Guilherme | Falco     | Brasil | Rua Teste | São Paulo | 12345-678 | (11) 99999-9999 | @ebac.com.br          | E-mail informado inválido!                         |
            | Guilherme | Falco     | Brasil | Rua Teste | São Paulo | 12345-678 | (11) 99999-9999 | guilherme@            | E-mail informado inválido!                         |
            | Guilherme | Falco     | Brasil | Rua Teste | São Paulo | aaaaa-aaa | (11) 99999-9999 | guilherme@ebac.com.br | Campo CEP deve conter apenas números!              |
            | Guilherme | Falco     | XYZ    | Rua Teste | São Paulo | 12345-678 | (11) 99999-9999 | guilherme@ebac.com.br | País informado inválido ou não selecionado!        |
            | Guilherme | Falco     | Brasil | Rua Teste | São Paulo | 12345-678 | (11) 99999-9999 | guilherme@ebac.com.br | Detalhes para faturamento atualizados com sucesso! |
