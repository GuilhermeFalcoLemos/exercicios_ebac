#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesso a página do produto

# 1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
# Cenários válidos
Esquema do Cenário: Seleção completa com variações válidas
Quando seleciono a cor <cor>
E seleciono o tamanho <tamanho>
E seleciono a quantidade <quantidade>
Então o botão "Adicionar ao carrinho" deve estar habilitado

Exemplos:
  | cor     | tamanho | quantidade |
  | Amarelo | PP      | 5          |
  | Rosa    | G       | 1          |
  | Preto   | M       | 9          |
  | Branco  | GG      | 7          |

# Cenários negativos
Cenário: Não selecionar a cor
E seleciono o tamanho "M"
E seleciono a quantidade "2"
Quando tento adicionar ao carrinho
Então devo ver uma mensagem de erro "Selecione a cor"

Cenário: Não selecionar a quantidade
E seleciono o tamanho "M"
E seleciono a cor "Amarela"
Quando tento adicionar ao carrinho
Então devo ver uma mensagem de erro "Selecione a quantidade"

Cenário: Não selecionar o tamanho
E seleciono a cor "Vermelha"
E seleciono a quantidade "2"
Quando tento adicionar ao carrinho
Então devo ver uma mensagem de erro "Selecione o tamanho"

#2 – Deve permitir apenas 10 produtos por venda

Cenário: Limite de quantidade
E seleciono a cor "Branco"
E seleciono o tamanho "GG"
E seleciono a quantidade "11"
Quando tento adicionar ao carrinho
Então devo ver uma mensagem de erro "Quantidade máxima permitida é 10 produtos"


#3 –Quando eu clicar no botão “limpar” deve voltar ao estado original

Cenário: Clicar no botão "Limpar" deve resetar todas as seleções
Dado que eu acesso a página do produto
E seleciono a cor "Azul"
E seleciono o tamanho "G"
E seleciono a quantidade "3"
Quando eu clico no botão "Limpar"
Então devo ver uma mensagem "Limpo com sucesso!"
E nenhuma cor deve estar selecionada
E nenhum tamanho deve estar selecionado
E o campo de quantidade deve estar vazio ou com valor padrão "1"