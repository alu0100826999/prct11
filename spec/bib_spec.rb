require "spec_helper"
require "Bib"

describe Biblio do

    before :each do
        @libro = Biblio.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)")
    end
    
    describe "Autor" do
        it "Debe existir uno o más autores" do
            @libro.autores.should eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"])    
        end 
    end
    
    describe "Titulo" do
        it "Debe existir un título" do
            @libro.titulo.should eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "Pragmatic Bookshelf;")    
        end 
    end
    
    describe "Serie" do
        it "Debe existir o no una serie" do
            @libro.serie.should eq("(The Facets of Ruby)")    
        end 
    end
    
    describe "Editorial" do
        it "Debe existir una editorial" do
            @libro.editorial.should eq("Pragmatic Bookshelf;")    
        end 
    end
    
end