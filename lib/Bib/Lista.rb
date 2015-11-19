Nodo = Struct.new(:value, :next)
Nodo2 = Struct.new(:value, :next, :prev)

class Lista
    attr_reader :inicio
    
    def initialize()
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
            @aux=Nodo.new(nil)
            aux = @inicio
            @inicio = @inicio.next
            return aux.value
        end
    end
    
end