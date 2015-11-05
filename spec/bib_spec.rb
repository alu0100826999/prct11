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
    
<<<<<<< HEAD
    describe "getautores" do
        it "Existe un método para obtener el listado de autores" do
            @libro.getautores.should eq() 
=======
        describe "gettitulo" do
        it "Existe un método para obtener titulo" do
            @libro.gettitulo.should eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
>>>>>>> 78d3d1a8eefbefa0821dc2323374ce63d8106b49
        end 
    end
    
    
    
end
