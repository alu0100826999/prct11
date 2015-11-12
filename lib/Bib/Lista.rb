Nodo = Struct.new(:value, :next)

class Lista
    attr_reader :inicio
    
    def initialize(nodo)
       @inicio = Nodo.new(nil)
    end
    
    def insert(nodo)    #push
        if (@inicio != nil)
            nodo.next = @inicio
            @inicio = nodo
        end
    end
    
    def extract()   #pop
        if (@inicio != nil)
            aux = @inicio
            @inicio = @inicio.next
            return aux.value
        end
    end
    
end