require "spec_helper"
require "Bib"

describe Biblio do

    before :each do
        @libro = Biblio.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
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
    
end