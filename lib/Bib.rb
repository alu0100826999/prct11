class Biblio
    
    attr_reader :autores, :titulo, :serie, :editorial, :numedicion
        
    def initialize(autores, titulo, serie = nil, editorial, numedicion)
        @autores = autores
        @titulo = titulo
        @serie = serie
        @editorial = editorial
        @numedicion = numedicion
    end
    
end
 
