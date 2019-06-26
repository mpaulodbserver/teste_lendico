Dado("que eu esteja na pagina inicial") do
  pagina_inicial.load
  end
  
  Quando("eu preencher meus dados e acessar") do
   pagina_inicial.login_valido
  end
  
  Então("eu verifico que o acesso foi feito com sucesso") do
    expect(page).to have_content "Welcome to Address Book"
  end
  
  Quando("eu preencher um usuário inválido com senha aleatória") do
    pagina_inicial.login_invalido
  end
  
  Então("eu verifico que o usuário não possui acesso") do
    expect(page).to have_content "Bad email or password."
  end
  
  Quando("eu preencher um usuário valido") do
    pagina_inicial.senha_invalida
  end
  
  Então("eu verifico que a senha está incorreta") do
    expect(page).to have_content "Bad email or password."
  end