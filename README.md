### DESAFIO QA LENDICO ###


#### TESTE API ####

Para realização dos testes de API, foi utlizado o framework de testes para API Httparty, rspec(para validações ou asseções).

Especificações das funcionalidades foi escrita na linguagem em Gherikn BDD, os cenários executados e validados foi pensado em cima dos criterios de aceite da API que eram: 
- Cep valido
- Cep inexistente
- Formato do Cep
- Cep Alfanumerico
- codigo de resposta
- asserts com o response esperado para cada cenário

Encapsulei as chamadas da API por metodos dentro de uma classe só, para que ficasse de uma forma facil de visualizar na hora de repassar o conhecimento para equipe ou dar manutenção.


#### TESTE WEB ####

Para realização dos testes de WEB, foi utlizado o framework de teste para front foi o capybara, rspec(para validações ou asseções).

Especificações das funcionalidades foi escrita na linguagem em Gherikn BDD, os cenários executados e validados foi pensado em cima dos criterios de aceite para 2d2 do um site de cadastro de endereços que eram: 
- Login valido já inscrito
- Login invalido
- Senha invalida
- Inscrição de um novo email
- Cadastro de um endereço novo
- Alteração de um endereço novo
- Listagem de um endereço novo
- Delete de um endereço novo
- asserts com o mensagens e dados esperados para cada cenário

Para o front , utilizei a mesma ideia de incapsular metodos e claro deixar no padrão page_objects.
Com o mesmo proposito de melhor passagem de conhecimentos e manuteção no codigo de automação

Para executar os testes e ainda puxar um relatorio bonito, inclui a gem "allure-cucumber", onde mostrara todos os cenarios gerados a partir das instruções abaixo.

#### INSTRUÇÕES #####

1 No prompt de comando abra o projeto ;
2 rode um bundler install das dependencias
3 apos isso é só chamar o test da forma : 
4 cucumber -p allure -p no_headless -p hmg - t@todos
5 apos isso chamar o server do allure, com isso será apresentado o relatorio de testes 


Espero ter correspondido a expectativa ate aqui e fico no aguardo , para duvidas ou sugestões.

Abs !!!