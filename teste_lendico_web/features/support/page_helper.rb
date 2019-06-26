Dir[File.join(File.dirname(__FILE__),
    '../pages/*_page.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Pages

    def pagina_inicial

        $pagina_inicial || PaginaInicialPage.new

    end
end
