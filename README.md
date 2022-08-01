#challenge by coodesh

Desenvolvimento de uma REST API para o desafio Back-end-Challenge-2021---Space-Flight-News

Linguagem/Fremeworks utilizados :
  * Java(17)
  * Spring Tool suite 4
  * Postman
  * XAMPP(MySQL)
  * HEROKU

Deploy no HEROKU :
  https://coodesh-challenge-ricardo.herokuapp.com/

Documentação da API :
  https://documenter.getpostman.com/view/20724172/Uze1wjXr
  
Observações sobre o projeto:

Sobre a rota [GET]/articles/:
  Para a listagem paginada, foram adotados os seguintes valores default para cada parametro: page:0, linesperpage:24, direction:ASC e orderby:id

Sobre a rota [PUT]/articles/{id}
  Na hora de atualizar um artigo, é adicionado um novo conteudo as suas listas e mantido o conteudo ja exisnte ali.
  
Questões gerais do projeto:
  Não foi criado validações especificas, pois no projeto não há nada falando sobre quais campos e quais tipos de validações seriam necessarias. Por exemplo, na atualização
 é possivel alterar qualquer campo do artigo(exceto o id do artigo).
 
 Sobre os bancos de dados utilizados:
  Foram utilizados o H2(banco de dados em memoria), e o MySQL.
    No caso do H2, toda hora que roda o projeto, ele cria uma base de dados com 96 artigos (Para usar o h2 va em application.properties e selecione o perfil test)
    O MySQL tambem possui os mesmos 96 artigos(Para usar o MYSQL va em application.properties e selecione o perfil dev)
  
 Para realizar as requisições e tambem para a construção da documentação API, foi utilizado o postman.
 
 Como instalar e usar o projeto:

  * Baixe o projeto do github
  * Faça o import dele no spring tool suite
  * Va na classe BackendchallengeApplication, clique com o botão direito -> Run as -> Spring boot aplication
  * Faça as requisições dos end-points usando o postman.Ex: http://localhost:8080/articles
