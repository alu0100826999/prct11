class Biblio
    
    attr_reader :autores, :titulo, :serie, :editorial, :numedicion, :fecha
        
    def initialize(autores, titulo, serie = nil, editorial, numedicion, fecha)
        @autores = autores
        @titulo = titulo
        @serie = serie
        @editorial = editorial
        @numedicion = numedicion
        @fecha = fecha
    end
    
end
 
