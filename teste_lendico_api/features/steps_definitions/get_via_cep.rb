Dado("que eu acesse a API de busca de endereço") do                                                  
    @get_busca = BuscaCepService.new
  end                                                                                                  
                                                                                                       
  Quando("informa o cep existente para buscar enderecos no metodo GET") do                             
    @get_busca.get_via_cep_existente                        
  end                                                                                                  
                                                                                                       
  Então("devera retornar o endereco valido do CEP corretamente e status code {int}") do |int|          
    $retorno = JSON.parse($request.body, object_class: OpenStruct)
    expect($retorno['cep']).to eq "02118-001"
    expect($retorno['localidade']).to eq "São Paulo"
    expect($request.code).to eq 200
    puts $retorno['cep']
    puts $retorno['localidade']
    puts $request.code
    
  end                                                                                                  
                                                                                                       
  Quando("informa o cep inexistente para buscar enderecos no metodo GET") do                           
    @get_busca.get_via_cep_inexistente                       
  end                                                                                                  
                                                                                                       
  Então("devera retornar a mensagem com o valor de {string} igual a {string}") do |string, string2|    
    $retorno = JSON.parse($request.body, object_class: OpenStruct)
    expect($retorno['erro']).to eq true
    expect($request.code).to eq 200
    puts $request.body                        
  end                                                                                                  
                                                                                                       
  Quando("informa o cep com mais de {int} digitos para buscar enderecos no metodo GET") do |int|       
    @get_busca.get_via_cep_alfanumerico                       
  end                                                                                                  
                                                                                                       
  Então("devera retornar a mensagem de erro {string} e status code {int}") do |string, int|            
    #$retorno = JSON.parse($request.body, object_class: OpenStruct)
    expect($request.body).to eq "<h3>ViaCEP Bad Request (400)</h3>"    
    expect($request.code).to eq 400
    puts $request.body                        
  end                                                                                                  
                                                                                                       
  Quando("informa o cep alfanumerico para buscar enderecos no metodo GET") do                          
    @get_busca.get_via_cep_espaco                        
  end                                                                                                  
                                                                                                       
  Então("devera retornar a mensagem {string}") do |string|                                             
    expect($request.code).to eq 400
    puts $request.body                      
  end                                                                                                  