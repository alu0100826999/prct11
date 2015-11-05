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
    
    def getautores
        return @autores
    end
    
    def gettitulo
        return @titulo
    end
    
    def getserie
        return @serie
    end
    
    def geteditorial
        return @editorial
    end
    
    def getnumedicion
        return @numedicion
    end
    
    def getfecha
        return @fecha
    end
    
    def getisbn
        return @isbn
    end
    
end
 
