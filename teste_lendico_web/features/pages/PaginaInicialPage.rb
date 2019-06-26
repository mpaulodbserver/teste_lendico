class PaginaInicialPage < SitePrism::Page
    
    set_url ''

    $compEmail 	= Faker::Number.number(2)
    $email = 'lendicoteste'+ Faker::Number.number(2) +'@teste.com'
    $nome = 'lendicoteste'+ Faker::Number.number(2)
    
   
    # ------- Cadastro endereço novo  -------#

    element :firstName, 'input[name="address[first_name]"]'
    element :lastName, 'input[name="address[last_name]"]'
    element :address1, 'input[id="address_street_address"]'
    element :address2, 'input[id="address_secondary_address"]'
    element :city, 'input[name="address[city]"]'
    #element :state, select('.address_state')[value="address[state]] 
    element :zipCode, 'input[name="address[zip_code]"]'
    element :country, 'input[id="address_country_us"]'  
    element :birthday, 'input[id="address_birthday"]'
    element :age, 'input[name="address[age]"]'
    element :website, 'input[name="address[website]"]'
    element :picture, 'input[name="address[picture]"]'
    element :phone, 'input[name="address[phone]"]'
    element :commonInterests, 'input[id="address_interest_climb"]'
    element :note, 'textarea[id="address_note"]'
    element :createButton, 'input[name="commit"]' 
    element :list, 'input[href="/addresses"]'
    element :newAdress, 'a[data-test="create"]'
    element :addresses, 'a[data-test="addresses"]'
    element :signout, 'input[href="/sign_out"]'
    element :navebar, 'span[class="navbar-toggler-icon"]'


    #------- Login -------#

    element :email, 'input[type="email"]'
    element :password, 'input[type="password"]'
    element :linkSign_up, 'a[data-test="sign-up"]'
    element :submit, 'input[class="btn btn-primary"]'
    element :linkSign_in, 'a[data-test="sign-in"]'
    #Bad email or password.

    #------- Lista Endereços -------#

    element :buttonShow, 'a[href="/addresses/13623"]'
    element :buttonEdit, :xpath, '/html/body/div/table/tbody/tr/td[6]/a'
    element :buttonDelete, :xpath, '/html/body/div/table/tbody/tr/td[7]/a'



    def cadastrar_endereco

        linkSign_up.click
        sleep 5
        email.set("#{$email}")
        password.set('mds301020#')
        submit.click
        addresses.click
        newAdress.click
        firstName.set("#{$nome}")
        lastName.set(Faker::Name.last_name)
        address1.set(Faker::Address.street_address)
        address2.set(Faker::Address.street_address)
        city.set(Faker::Address.city_suffix)
        zipCode.set(Faker::Address.zip_code)
        country.click
        birthday.set('01/01/2000')
        age.set(Faker::Number.number(2))
        website.set('https://www.lendico.com.br/')
        picture.set('features\support\config\imagens\lendico.jpg')
        phone.set(Faker::PhoneNumber.cell_phone)
        commonInterests.click
        note.set('Teste_automatizado')
        createButton.click
       
    end

    def obrigatoriedade_campos

        email.set(DATA_FILE['login'])
        password.set(DATA_FILE['pass']) 
        submit.click  
        addresses.click 
        newAdress.click 
        submit.click   
    end


    def login_valido

        email.set(DATA_FILE['login'])
        password.set(DATA_FILE['pass']) 
        submit.click       
    end

    def login_invalido

        email.set(DATA_FILE['login_invalido'])
        password.set(DATA_FILE['pass'])        
        submit.click
    end

    def senha_invalida

        email.set(DATA_FILE['login'])
        password.set(DATA_FILE['pass_invalido'])        
        submit.click
    end


    def listar_endereco_cadastrado
        
        email.set("#{$email}")
        password.set(DATA_FILE['pass']) 
        submit.click 
        addresses.click

    end

    def editar_lista_enderecos

        email.set("#{$email}")
        password.set(DATA_FILE['pass']) 
        submit.click 
        addresses.click
        buttonEdit.click
        firstName.set("#{$nome}")
        submit.click

    end

    def deletar_endereco
        
        email.set("#{$email}")
        password.set(DATA_FILE['pass'])
        submit.click 
        addresses.click
        buttonDelete.click
        
    end


end

