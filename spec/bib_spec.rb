require "spec_helper"
require "Bib"

describe Biblio do

    before :each do
        @libro1 = Biblio.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
        @libro2 = Biblio.new("Scott Chacon", "Pro Git 2009th Edition" "Pro", "Apress", "2009 edition", "August 27, 2009", ["ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
        @libro3 = Biblio.new(["David Flanagan, Yukihiro Matsumoto"], "The Ruby Programming Language", "", "O’Reilly Media", "1 edition", "February 4, 2008", ["ISBN-10: 0596516177", "ISBN-13: 978-0596516178"])
        @libro4 = Biblio.new(["David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010", ["ISBN-10: 1934356379", "ISBN-13: 978-1934356371"])
        @libro5 = Biblio.new("Richard E. Silverman", "Git Pocket Guide", "", "O’Reilly Media", "1 edition", "August 2, 2013", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])
        
	    @lista= Lista.new()
        
        @nodo1 = Nodo.new(@libro1, nil)
        @nodo2 = Nodo.new(@libro2, nil)
        @nodo3 = Nodo.new(@libro3, nil)
        @nodo4 = Nodo.new(@libro4, nil)
        @nodo5 = Nodo.new(@libro5, nil)
        
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
    
end

    
describe Libro do
   
    before :each do
        @lib1 = Libro.new("Richard E. Silverman", "Git Pocket Guide", "", "O’Reilly Media", "1 edition", "August 2, 2013", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])
    end
    
    it "Comprobamos la instacia de Libro" do
        (@lib1.instance_of?Libro).should eq(true)
    end
    
    it "Comprobamos que la jeranquia de objetos de Libro pertenece a Biblio" do
        expect(@lib1.is_a?Biblio).to eq(true)
    end
    
end


    

