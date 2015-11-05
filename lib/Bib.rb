class Biblio
    
    attr_reader :autores, :titulo, :serie
        
    def initialize(autores, titulo, serie = nil)
        @autores = autores
        @titulo = titulo
        @serie = serie
    end
    
end
 
