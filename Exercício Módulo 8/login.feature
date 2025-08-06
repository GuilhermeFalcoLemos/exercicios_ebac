#language: pt

Funcionalidade: Tela de login  
Como cliente da EBAC-SHOP  
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos  

Contexto:  
Dado que eu acesse a página de autenticação do portal EBAC  

Cenário: Autenticação válida  
Quando eu preencher o campo de e-mail com "guilherme@ebac.com.br" e o campo de senha com "Teste@123" e clicar em "Login"  
Então devo ser redirecionado para a página de checkout  

Cenário: Autenticação com senha inválida  
Quando eu preencher o campo de e-mail com "guilherme@ebac.com.br" e o campo de senha com "senhaaaaaaaaaa@123" e clicar em "Login"  
Então devo ver a mensagem de alerta "Usuário ou senha inválidos"  

Cenário: Usuário inexistente  
Quando eu preencher o campo de e-mail com "xxxxxxxx@exemplo.com" e o campo de senha com "Teste@123" e clicar em "Login"  
Então devo ver a mensagem de alerta "Usuário ou senha inválidos"
