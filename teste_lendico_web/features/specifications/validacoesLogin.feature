#encoding: utf-8
#language: pt

Funcionalidade: Acessar Pagina inicial Lendico
Eu usuário da lendico 
Quero fazer meu login 
Para que eu possa consultar informações de investimentos e financiamentos

Contexto: Pagina de login
	Dado que eu esteja na pagina inicial

@loginValido @login @todos
Cenário: Acessar Login Page
	Quando eu preencher meus dados e acessar
	Então eu verifico que o acesso foi feito com sucesso

@loginInvalido @login @todos
Cenário: Acessar Login page com usuário inválido
	Quando eu preencher um usuário inválido com senha aleatória
	Então eu verifico que o usuário não possui acesso

@senhaInvalida @login @todos
Cenário: Acessar Login page com usuário inválido
	Quando eu preencher um usuário valido
	Então eu verifico que a senha está incorreta
