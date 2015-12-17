require "spec_helper"
require "Bib"

describe Biblio do
    
    context "Libros" do

        libro1 = Libro.new("El principe de la niebla") do
            author  :name => "Carlos Ruiz"
            edit :numedition => "20"
            date "15 nov 1993"
        end
        
        it "Creamos un DSL con el libro" do
            expect(libro1.kind_of?Libro).to eq(true)
        end
        
    end
    
    context "Revista" do
        revista1 = Revista.new("Revista Vogue") do
            author :name => "Anna Wintour"
            edit :numedition => "1000"
            b_issn "123456789"
        end
        
        it "Creamos un DSL con la revista" do
            expect(revista1.kind_of?Revista).to eq(true)
        end
        
    end
    
    context "Periodico" do
        per1 = Periodico.new("El Pais") do
            editor :name => "Antonio Caño"
            edit "456"
        end
        
        it "Creamos un DSL con el periodico" do
            expect(per1.kind_of?Periodico).to eq(true)
        end
        
    end
    
    context "Documento Electronico" do
        elec1 = Electronico.new("Documento electronico") do
            author :name => "Antonio Caño"
            n_url :direccion => "http..."
        end
        
        it "Creamos un DSL con el documento electronico" do
            expect(elec1.kind_of?Electronico).to eq(true)
        end
        
    end
    

end

