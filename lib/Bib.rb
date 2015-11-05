class Biblio
    
    attr_reader :autores, :titulo, :serie, :editorial, :numedicion, :fecha, :isbn
        
    def initialize(autores, titulo, serie = nil, editorial, numedicion, fecha, isbn)
        @autores = autores
        @titulo = titulo
        @serie = serie
        @editorial = editorial
        @numedicion = numedicion
        @fecha = fecha
        @isbn = isbn
    end
    
end
 
