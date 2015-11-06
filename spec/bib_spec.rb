require "spec_helper"
require "Bib"

describe Biblio do

    before :each do
        @libro = Biblio.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
    end
    
    describe "Metodos" do
    
        it "Existe un método para obtener el listado de autores" do
            expect(@libro.autores).to eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"])
        end 
    
        it "Existe un método para obtener titulo" do
            expect(@libro.titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
        end 
    
        it "Existe un método para obtener serie" do
            expect(@libro.serie).to eq("(The Facets of Ruby)")
        end 
  
        it "Existe un método para obtener una editorial" do
            expect(@libro.editorial).to eq("Pragmatic Bookshelf")
        end 
    
        it "Existe un método para obtener un Número de edición" do
            expect(@libro.numedicion).to eq("4 edition")    
        end 
    
        it "Existe un método para obtener una fecha de publicación" do
            expect(@libro.fecha).to eq("(July 7, 2013)")    
        end 
    
        it "Existe un método para obtener uno más números ISBN" do
            expect(@libro.isbn).to eq(["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])    
        end 
        
    end
    
    describe "to_s" do
        it 'Existe un método para obtener la referencia formateada' do
            expect(@libro.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler \n Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide \n (The Facets of Ruby) \n Pragmatic Bookshelf \n 4 edition \n (July 7, 2013) \n [\"ISBN-13: 978-1937785499\", \"ISBN-10: 1937785491\"]")  
        end
    end
end
