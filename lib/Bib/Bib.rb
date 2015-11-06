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
    
    def to_s()
       "#{@autores[0]}, #{@autores[1]}, #{@autores[2]} \n #{@titulo} \n #{@serie} \n #{@editorial} \n #{@numedicion} \n #{@fecha} \n #{@isbn}"
    end
    
end