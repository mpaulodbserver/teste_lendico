#encoding: utf-8
#language: pt

Funcionalidade: Nova pagina de cadastro de endereços lendico
Eu usuário inscrito no site lendico   
Quero realizar o cadastro de um novo endereço  
Para receber as condições especiais de credito

Contexto: Acessar pagina de cadastro lendico
    Dado que eu seja um usuario inscrito

@validarObrigatoriedadeCampos @e2eEndereco @todos
Cenario: validar obrigatoriedade campos para cadastro de novo endereço
	Quando eu nao preencher meus dados pessoais e criar o novo endereço
	Então devera exibir a mensagem de erro "5 errors prohibited this address from being saved:" para os campos obrigatorios

@cadastrarNovoEndereço @e2eEndereco @todos
Cenario: Realizar o cadastro de novo endereço
	Quando eu preencher meus dados pessoais e criar o novo endereço
	Então devera exibir os dados do endereço cadastrado e a mensagem "Address was successfully created."

@listarEndereço @e2eEndereco @todos
Cenario: Consultar novo endereço cadastrado
	Quando acessar a lista de enderecos cadastrado
	Então devera exibir a lista com todos enderecos cadastrado com sucesso

@alterarEndereço @e2eEndereco @todos
Cenario: Alterar novo endereço cadastrado
	Quando acessar a lista de enderecos cadastrado e alterar o endereco
	Então devera exibir os dados do endereço alterado e a mensagem "Address was successfully updated."

@deletarEndereço @e2eEndereco @todos
Cenario: Deletar novo endereço cadastrado
	Quando acessar a lista de enderecos cadastrado e deletar o endereco
	Então devera exibir a mensagem "Address was successfully destroyed."
