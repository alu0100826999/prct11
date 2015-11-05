require "spec_helper"
require "Bib"

describe Biblio do

    before :each do
        @libro = Biblio.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
    end
    
    describe "Autor" do
        it "Debe existir uno o más autores" do
            @libro.autores.should eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"])    
        end 
    end
    
    describe "Titulo" do
        it "Debe existir un título" do
            @libro.titulo.should eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")    
        end 
    end
    
    describe "Serie" do
        it "Debe existir o no una serie" do
            @libro.serie.should eq("(The Facets of Ruby)")    
        end 
    end
    
    describe "Editorial" do
        it "Debe existir una editorial" do
            @libro.editorial.should eq("Pragmatic Bookshelf")    
        end 
    end
    
    describe "Numero de Edicion" do
        it "Debe existir un Número de edición" do
            @libro.numedicion.should eq("4 edition")    
        end 
    end
    
    describe "Fecha de Publicación" do
        it "Debe existir una fecha de publicación" do
            @libro.fecha.should eq("(July 7, 2013)")    
        end 
    end
    
    describe "ISBN" do
        it "Debe existir uno o más números ISBN" do
            @libro.isbn.should eq(["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])    
        end 
    end
    
    describe "getautores" do
        it "Existe un método para obtener el listado de autores" do
            @libro.getautores.should eq()
        end 
    end
    
    
    
end
