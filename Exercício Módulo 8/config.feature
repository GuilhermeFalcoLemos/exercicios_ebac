      #language: pt

      Funcionalidade: Configurar produto
      Como cliente da EBAC-SHOP
      Quero configurar meu produto de acordo com meu tamanho e gosto
      E escolher a quantidade
      Para depois inserir no carrinho

      Contexto:
      Dado que eu acesso a página do produto

      # Regra 1 – Seleções de cor, tamanho e quantidade devem ser obrigatórias

      Esquema do Cenário: Seleção completa com variações válidas
      Quando seleciono a  <cor>,o <tamanho> e a  <quantidade>
      Então o botão "Adicionar ao carrinho" deve estar habilitado

      Exemplos:
      | cor     | tamanho | quantidade |
      | Amarelo | PP      | 5          |
      | Rosa    | G       | 1          |
      | Preto   | M       | 9          |
      | Branco  | GG      | 7          |

Cenário: Tentativa de adicionar ao carrinho sem selecionar a cor
Quando seleciono o tamanho "M" e a quantidade "2" e tento adicionar ao carrinho
Então devo ver a mensagem de erro "Selecione a cor"

Cenário: Tentativa de adicionar ao carrinho sem selecionar a quantidade
Quando seleciono o tamanho "M" e a cor "Amarela" e tento adicionar ao carrinho
Então devo ver a mensagem de erro "Selecione a quantidade"

Cenário: Tentativa de adicionar ao carrinho sem selecionar o tamanho
Quando seleciono a cor "Vermelha" e a quantidade "2" e tento adicionar ao carrinho
Então devo ver a mensagem de erro "Selecione o tamanho"

# Regra 2 – Deve permitir apenas 10 produtos por venda

Cenário: Tentativa de adicionar mais de 10 unidades ao carrinho
Quando seleciono a cor "Branco", o tamanho "GG" e a quantidade "11" e tento adicionar ao carrinho
Então devo ver a mensagem de erro "Quantidade máxima permitida é 10 produtos"

# Regra 3 – Clicar no botão “Limpar” deve voltar ao estado original

Cenário: Clicar no botão "Limpar"deve resetar todas as seleções
Dado que eu acesse a página do produto
Quando seleciono a cor "Azul", o tamanho "G", a quantidade "3" e clico no botão "Limpar"
Então o sistema deve exibir uma mensagem "Limpo com sucesso" e todas as configurações do produto devem voltar ao estado original
