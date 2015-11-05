class Biblio
    
    attr_reader :autores, :titulo, :serie, :editorial
        
    def initialize(autores, titulo, serie = nil, editorial)
        @autores = autores
        @titulo = titulo
        @serie = serie
        @editorial = editorial
    end
    
end
 
