Nodo = Struct.new(:value, :next)

class Lista
    attr_reader :inicio
    
    def initialize(nodo)
        
       @inicio = Nodo.new(nil) 
       
    end
    
    def pop(nodo)
        
        if (@inicio != nil)
           nodo.next = @inicio
           @inicio = nodo
        end
        
    end
    
    def extract()
        
        if (@inicio != nil)
            aux = @inicio
            @inicio = @inicio.next #para imprimir el segundo que metemos. 
            #Nos piden el primer nodo asi que pasamos el nodo cero y extraemos el siguiente que es el primero.
            #Si uitamos next nos extrae el nodo 0.
            return aux
        else
            return nil
        end
        
    end
    
end