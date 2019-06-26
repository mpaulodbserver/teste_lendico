#encoding: utf-8
#language: pt

Funcionalidade: API Via CEP


Contexto: Realizar busca de endereço por CEP
    Dado que eu acesse a API de busca de endereço

@BuscaPorCepExistente @getCep
Cenário: Validar busca de endereço por CEP existente
Quando informa o cep existente para buscar enderecos no metodo GET
Então devera retornar o endereco valido do CEP corretamente e status code 200

@BuscaPorCepInexistente @getCep
Cenário: Validar busca de endereço por CEP existente
Quando informa o cep inexistente para buscar enderecos no metodo GET
Então devera retornar a mensagem com o valor de "erro" igual a "true"

@validarFormatoCep9digitos @getCep
Cenário: Validar formato CEP com mais de 8 digitos
Quando informa o cep com mais de 8 digitos para buscar enderecos no metodo GET
Então devera retornar a mensagem de erro "ViaCEP Bad Request" e status code 400

@validarFormatoCepAlfanumerico @getCep
Cenário: Validar busca de endereço por CEP alfanumérico 
Quando informa o cep alfanumerico para buscar enderecos no metodo GET
Então devera retornar a mensagem "ViaCEP Bad Request"