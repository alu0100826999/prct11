Nodo = Struct.new(:value, :next)

class Lista
    attr_reader :inicio
    
    def initialize(nodo)
       @inicio = Nodo.new(nil) 
    end
    
    
    
end