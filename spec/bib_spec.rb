require "spec_helper"
require "bib"

describe Bib do
    before :each do
        @libro = libro.new("Dave Thomas")
    end
    
    describe "Autor" do
        it "existe un método para obtener el listado de autores" do
            @libro.autores.should eq("Dave Thomas")    
        end 
    end
end