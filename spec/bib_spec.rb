require "spec_helper"
require "Bib"

describe Biblio do
    
    context "Libros" do

        libro1 = Libro.new("El principe de la niebla") do
            author  :name => "Carlos Ruiz"
            edition :numedition => "20"
            date "15 nov 1993"
        end
        
        it "Creamos un DSL con el libro" do
            expect(libro1.kind_of?Libro).to eq(true)
        end
        
    end
    
    context "Revista" do
        revista1 = Revista.new("Revista Vogue") do
            author :name => "Anna Wintour"
            edition :numedition => "1000"
            b_issn "123456789"
        end
        
        it "Creamos un DSL con la revista" do
            expect(revista1.kind_of?Revista).to eq(true)
        end
        
    end
    

end

