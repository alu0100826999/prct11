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
    
    def edit(text, options = {})
        edit = text
        edit << "(#{options[:numedition]})" if options[:numedition]
        editorial << edit
    end
    
    def date(text, options = {})
       date = text
       date << "(#{options[:dates]})" if options[:dates]
       fecha << date
    end
    
end

class Revista < Biblio
    
    attr_reader :autor, :serie, :editorial, :issn
        
    def initialize(titulo, &block)
        @autor = []
        @titulo = titulo
        @serie = []
        @issn = []
        @editorial = []
        
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
    
    def edit(text, options = {})
        edit = text
        edit << "(#{options[:numedition]})" if options[:numedition]
        editorial << edit
    end
    
    def b_issn(text, options = {})
       b_issn = text
       b_issn << "(#{options[:issn]})" if options[:issn]
       issn << b_issn
    end
    
end


class Periodico < Biblio
    
    attr_reader :autor, :editor, :edicion
        
    def initialize(titulo, &block)
        @autor = []
        @titulo = titulo
        @editor = []
        @edicion = []
        
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval &block
            end
        end
        
    end
    
    def edit(text, options = {})
        edit = text
        edit << "(#{options[:numedition]})" if options[:numedition]
        edicion << edit
    end
    
    def editor(text, options = {})
        editor = text
        editor << "(#{options[:neditor]})" if options[:neditor]
        autor << editor
    end
    
end


class Electronico < Biblio
    
    attr_reader :url
        
    def initialize(autores, titulo, url)
        super(autores, titulo)
        @url = url
    end
    
end
