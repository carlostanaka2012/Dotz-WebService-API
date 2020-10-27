#language: pt
@Webservice/API

Funcionalidade: Verificar as informações do catalogo de filmes e armazenar o resultado

Como um usuário do sistema
Eu gostaria de consultar os filmes
E registrar os resultados da minha pesquisa

Cenário: Solicitar informações e armazenar dados do campo title e verificar o status
  Dado o endereço da API para acessar o catálogo disponível 
  Então realizar requisição para consultar
  Quando armazeno o valor do campo "title" dos results

Cenário: Solicitar informações e armazenar dados do campo count e enviar novo get pasando valor maior no endpoint
   Dado o endereço da API para acessar o catálogo disponível "planets" 
   Então realizar requisição para consultar api "count"
   Quando armazeno o valor do campo "count"
   #E solicito uma nova requisição com valor superior armazenado
   #Então verifico status da requisição