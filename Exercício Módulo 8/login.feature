#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC

Cenário: Autenticação válida
Quando eu digitar o usuário "guilherme@ebac.com.br"
E a senha "Teste@123"
Então deve ser redirecionado para o checkout

Cenário: Autenticação com senha inválida
Quando eu digitar o usuário "guilherme@ebac.com.br"
E a senha "senhaaaaaaaaaa@123"
Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

Cenário: Usuário inexistente
Quando eu digitar o usuário "xxxxxxxx@exemplo.com"
E a senha "Teste@123"
Então devo ver a mensagem de alerta "Usuário ou senha inválidos"
