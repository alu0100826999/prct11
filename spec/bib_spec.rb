require "spec_helper"
require "Bib"

describe Biblio do

    before :each do
        @libro = Biblio.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
    end
    

    
    describe "getautores" do
        it "Existe un método para obtener el listado de autores" do
            @libro.getautores.should eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"])
        end 
    end
    
    describe "gettitulo" do
        it "Existe un método para obtener titulo" do
            @libro.gettitulo.should eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
        end 
    end
    
    describe "getserie" do
        it "Existe un método para obtener serie" do
            @libro.getserie.should eq("(The Facets of Ruby)")
        end 
    end
    
    describe "geteditorial" do
        it "Existe un método para obtener una editorial" do
            @libro.geteditorial.should eq("Pragmatic Bookshelf")
        end 
    end
    
    
    describe "getEdicion" do
        it "Existe un método para obtener un Número de edición" do
            @libro.getnumedicion.should eq("4 edition")    
        end 
    end
    
    describe "getPublicación" do
        it "Existe un método para obtener una fecha de publicación" do
            @libro.getfecha.should eq("(July 7, 2013)")    
        end 
    end
    
    describe "getISBN" do
        it "Existe un método para obtener uno más números ISBN" do
            @libro.getisbn.should eq(["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])    
        end 
    end
    
    describe "Formateada" do
        it 'Existe un método para obtener la referencia formateada' do
            @libro.formateada.should eq("Pepe, Juan, Manuel | Los tres cerditos | Primera Serie | Fabulas | 1a edicion | 1 Enero | ISBN-23: 4534533453, ISBN-20: 5435345345")  
        end
    end
end
