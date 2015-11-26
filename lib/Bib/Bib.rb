class Biblio
    
    include Comparable
    
        attr_reader :autores, :titulo
            
        def initialize(autores, titulo)
            @autores = autores
            @titulo = titulo
        end
        
        def to_s()
            "#{@autores[0]}, #{@autores[1]}, #{@autores[2]} \n #{@titulo}"
    
        end
        
        def <=> (other) 
			@titulo<=> other.titulo
		end
    
end


class Libro < Biblio
    
    attr_reader :serie, :editorial, :numedicion, :fecha, :isbn
    
    def initialize(autores, titulo, serie = nil, editorial, numedicion, fecha, isbn)
        super(autores, titulo)
        @serie = serie
        @editorial = editorial
        @numedicion = numedicion
        @fecha = fecha
        @isbn = isbn
    end
    
end

class Revista < Biblio
    
    attr_reader :serie, :editorial, :issn
        
    def initialize(autores, titulo, serie = nil, editorial, issn)
        super(autores, titulo)
        @serie = serie
        @issn = issn
        @editorial = editorial
    end
    
end


class Periodico < Biblio
    
    attr_reader :editor, :periodista
        
    def initialize(autores, titulo, editor, periodista)
        super(autores, titulo)
        @editor = editor
        @periodista = periodista
    end
    
end


class Electronico < Biblio
    
    attr_reader :url
        
    def initialize(autores, titulo, url)
        super(autores, titulo)
        @url = url
    end
    
end
