require "spec_helper"
require "Bib"

describe Biblio do

    before :each do
        @libro1 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
        @libro2 = Libro.new("Scott Chacon", "Pro Git 2009th Edition" "Pro", "Apress", "2009 edition", "August 27, 2009", ["ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
        @libro3 = Libro.new(["David Flanagan, Yukihiro Matsumoto"], "The Ruby Programming Language", "", "O’Reilly Media", "1 edition", "February 4, 2008", ["ISBN-10: 0596516177", "ISBN-13: 978-0596516178"])
        @libro4 = Libro.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010", ["ISBN-10: 1934356379", "ISBN-13: 978-1934356371"])
        @libro5 = Libro.new("Richard E. Silverman", "Git Pocket Guide", "", "O’Reilly Media", "1 edition", "August 2, 2013", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])
        
	    @lista= Lista.new()
        
        @nodo1 = Nodo.new(@libro1, nil)
        @nodo2 = Nodo.new(@libro2, nil)
        @nodo3 = Nodo.new(@libro3, nil)
        @nodo4 = Nodo.new(@libro4, nil)
        @nodo5 = Nodo.new(@libro5, nil)
        
        @rev1 = Revista.new("Josefa", "Vogue", "", "1 edition", "ISNN-10: 1449325866")
        @per1 = Periodico.new("Scott Chacon", "Hola", "David Flanagan", "Richard Silverman")
        @elec1 = Electronico.new("Yukihiro Matsumoto", "The Ruby Programming Language", "https://www.google.es/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8")
        
        @nodo6 = Nodo2.new(@libro1, nil, nil)

        @listadoble = Listadoble.new()
        
    end
    
    context "Node" do
    
        it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
            expect(@nodo1.value).to eq(@libro1)
            expect(@nodo1.next).to eq(nil)
        end
        
    end
    
    context "Lista" do
    
        it "Se extrae el primer elemento de la lista" do
            @lista.insert(@nodo5) #metemos todos los elementos en la lista y sacamos el nodo[1] no el 0
            @lista.insert(@nodo4)
            @lista.insert(@nodo3)
            @lista.insert(@nodo2)
            @lista.insert(@nodo1)
            @lista.extract()
            expect(@lista.inicio).to eq(@nodo2)
        end
        
        it "Se puede insertar un elemento" do
            @lista.insert(@nodo3)
            expect(@lista.inicio).to eq(@nodo3)
        end
        
    
        it "Existe un elemento para insertar varios elementos" do
            @lista.insert(@nodo5)
            @lista.insert(@nodo4)
            @lista.insert(@nodo3)
            @lista.insert(@nodo2)
            @lista.insert(@nodo1)
            
            expect(@lista.inicio).to eq(@nodo1)
            @lista.extract()
            expect(@lista.inicio).to eq(@nodo2)
            @lista.extract()
            expect(@lista.inicio).to eq(@nodo3)
            @lista.extract()
            expect(@lista.inicio).to eq(@nodo4)
            @lista.extract()
            expect(@lista.inicio).to eq(@nodo5)
            @lista.extract()
        end
        
        it "Debe existir una Lista con su cabeza" do
            @lista.insert(@nodo1)
            expect(@lista.inicio).to eq(@nodo1)
        end
        
    end
    
    
    context "Listadoble" do
        
        it "Existe un nodo de la lista que es doble" do
            expect(@nodo6.next).to eq(nil)
            expect(@nodo6.prev).to eq(nil)
        end
        
        describe "Existe una lista enlazada doble con su head y su tail (doblemente enlazada)" do
            it "Se puede insertar por el inicio y extraer por el final" do
                @listadoble.insert_head(@libro5) #insertamos libro por el principio
                expect(@listadoble.head.value).to eq(@libro5)
    			expect(@listadoble.tail.value).to eq(@libro5)
    		end
        end  
        
        describe"#Se insertan varios nodos en la lista"do
		    it"Se insertan correctamente"do
    			@listadoble.insert_head(@libro1)
    				expect(@listadoble.head.value).to eq(@libro1)
    				expect(@listadoble.tail.value).to eq(@libro1)
    			@listadoble.insert_head(@libro2)
    				expect(@listadoble.head.value).to eq(@libro2)
    				expect(@listadoble.tail.value).to eq(@libro1)
    			@listadoble.insert_head(@libro3)
    				expect(@listadoble.head.value).to eq(@libro3)
    				expect(@listadoble.tail.value).to eq(@libro1)
		    end
	    end
    
    end
    

    context "Referencias" do
        
        describe Libro do
        
            it "Comprobamos instancias" do
                @lib1.is_a?Libro
        	    @lib1.is_a?Biblio
            	@lib1.instance_of?Libro
            	@lib1.is_a?BasicObject
            	@lib1.respond_to?(:autores)
            end
            
        end
        
        describe Revista do
           
            it "Comprobamos instancias" do
                @lib1.is_a?Revista
        	    @lib1.is_a?Biblio
            	@lib1.instance_of?Revista
            	@lib1.is_a?BasicObject
            	@lib1.respond_to?(:autores)
            end
            
        end
        
        describe Periodico do
           
            it "Comprobamos instancias" do
                @lib1.is_a?Periodico
        	    @lib1.is_a?Biblio
            	@lib1.instance_of?Periodico
            	@lib1.is_a?BasicObject
            	@lib1.respond_to?(:autores)
            end
            
        end
        
        describe Electronico do
         
            it "Comprobamos instancias" do
                @lib1.is_a?Electronico
        	    @lib1.is_a?Biblio
            	@lib1.instance_of?Electronico
            	@lib1.is_a?BasicObject
            	@lib1.respond_to?(:autores)
            end
            
        end
    
    end
    

end

