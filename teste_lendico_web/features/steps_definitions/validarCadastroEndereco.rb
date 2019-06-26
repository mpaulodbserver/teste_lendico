Dado("que eu seja um usuario inscrito") do
    pagina_inicial.load
    
  end
  
  Quando("eu nao preencher meus dados pessoais e criar o novo endereço") do
    pagina_inicial.obrigatoriedade_campos
  end
  
  Então("devera exibir a mensagem de erro {string} para os campos obrigatorios") do |string|
    expect(page).to have_content "5 errors prohibited this address from being saved:"
    expect(page).to have_content "First name can't be blank"
    expect(page).to have_content "Last name can't be blank"
    expect(page).to have_content "Address1 can't be blank"
    expect(page).to have_content "City can't be blank"
    expect(page).to have_content "Zip code can't be blank"
  end
  
  Quando("eu preencher meus dados pessoais e criar o novo endereço") do
    pagina_inicial.cadastrar_endereco
  end
  
  Então("devera exibir os dados do endereço cadastrado e a mensagem {string}") do |string|
    expect(page).to have_content "Address was successfully created."
  end
  
  Quando("acessar a lista de enderecos cadastrado") do
    pagina_inicial.listar_endereco_cadastrado
  end
  
  Então("devera exibir a lista com todos enderecos cadastrado com sucesso") do
    expect($email).to have_content "lendicoteste"
  end
  
  Quando("acessar a lista de enderecos cadastrado e alterar o endereco") do
    pagina_inicial.editar_lista_enderecos
  end
  
  Então("devera exibir os dados do endereço alterado e a mensagem {string}") do |string|
    expect(page).to have_content "Address was successfully updated."
  end
  
  Quando("acessar a lista de enderecos cadastrado e deletar o endereco") do
    pagina_inicial.deletar_endereco
  end

  Então("devera exibir a mensagem {string}") do |string|
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Address was successfully destroyed."
    

  end