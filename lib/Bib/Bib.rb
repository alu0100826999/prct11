class Biblio
    
    include Comparable
    
        attr_reader :autor, :titulo
            
        def initialize(titulo, &bloque)
            self.autor = []
            self.titulo = titulo
            
            if block_given?
                if block.arity == 1
                    yield self
                else
                    instance_eval &bloque
                end
            end
        end
        
        def <=> (other) 
			@titulo<=> other.titulo
		end
    
end


class Libro < Biblio
    
    attr_reader :autor, :serie, :editorial, :numedicion, :fecha, :isbn
    
    def initialize(titulo, &block)
        @autor = []
        @titulo = titulo
        @serie = []
        @editorial = []
        @numedicion = []
        @fecha = []
        @isbn = []
        
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval &block
            end
        end
        
    end
    
    def author(text, options = {})
        author = text
        author << "(#{options[:name]})" if options[:name]
        autor << author
    end
    
    def edition(text, options = {})
        edition = text
        edition << "(#{options[:numedition]})" if options[:numedition]
        editorial << edition
    end
    
    def date(text, options = {})
       date = text
       date << "(#{options[:dates]})" if options[:dates]
       fecha << date
    end
    
end

