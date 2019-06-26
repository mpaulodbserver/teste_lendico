class BuscaCepService

    def get_via_cep_existente
    
        $cep = YAML.load_file('features\support\config\data.yml')['cep_existente']
        $request = HTTParty.get(CONFIG['url_default'] +"ws/#{$cep}/json/")
    end

    def get_via_cep_inexistente
   
        $cep = YAML.load_file('features\support\config\data.yml')['cep_inexistente']
        $request = HTTParty.get(CONFIG['url_default'] +"ws/#{$cep}/json/")
    end

    def get_via_cep_alfanumerico
   
        $cep = YAML.load_file('features\support\config\data.yml')['cep_alfanumerico']
        $request = HTTParty.get(CONFIG['url_default'] +"ws/#{$cep}/json/")
    end

    def get_via_cep_espaco
   
        $cep = YAML.load_file('features\support\config\data.yml')['cep_espaco']
        $request = HTTParty.get(CONFIG['url_default'] +"ws/#{$cep}/json/")
    end

end


