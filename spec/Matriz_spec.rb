require 'Matriz.rb'

describe Matriz do
	before :each do
		#1 2 3 4
		@mat1 = Matriz.new (2, 2) #Matriz 1
		@mat1.read() #Leemos los datos de la matriz 1
		#5 6 7 8
		@mat2 = Matriz.new (2, 2) #Matriz 2
		@mat2.read() #Leemos los datos de la matriz 2
	end
	
	describe "# Tamaño de la matriz " do
		it "Debe existir un numero de filas" do
			@mat1._fil.should eq(2)
		end
		it "Debe existir un numero de columnas" do
			@mat1._fil.should eq(2)
		end
	end
	
	describe "# Comprobando que la matriz no está vacia" do
		it "La matriz debe contener datos" do
			@mat1.to_s.should eq("1 2 \n3 4 ")
		end
	end
	
	describe "# Suma de matrices" do
		it "Se deben poder sumar dos matrices" do
			sum = (@mat1 + @mat2)
			sum.to_s.should eq("6 8 \n10 12 ")
		end
	end
	
	describe "# Multiplicacion de matrices" do
		it "Se deben poder multiplicar dos matrices" do
			mult = (@mat1 * @mat2)
			mult.to_s.should eq("19 22 \n43 50 ")
		end
	end
	
end
