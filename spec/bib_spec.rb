require "spec_helper"
require "Bib"

describe Biblio do
    
    context "Libros" do

        libro11 = Libro.new("El principe de la niebla") do
            author  :name => "Nombre"
            edition :numedition => "20"
            date "15 nov 1993"
        end
        
        it "Creamos un DSL con el libro" do
            expect(libro11.kind_of?Libro).to eq(true)
        end
        
        puts libro11
        
    end
    

end

