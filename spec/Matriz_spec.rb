require 'Matriz.rb'

describe Matriz do
	before :each do
		arr1 = [[1, 2], [3, 4]]
		arr2 = [[5, 6], [7, 8]]
		#1 2 3 4
		@mat1 = Matriz.new(2, 2) #Matriz 1
		@mat1.copy!(arr1)
		#5 6 7 8
		@mat2 = Matriz.new(2, 2) #Matriz 2
		@mat2.copy!(arr2)
	end
	
	describe "# Tamanyo de la matriz " do
		it "Debe existir un numero de filas" do
			@mat1._fil.should eq(2)
			puts "Mat1"
			puts "#{@mat1}"
		end
		it "Debe existir un numero de columnas" do
			@mat1._fil.should eq(2)
		end
	end
	
	describe "# Comprobando que la matriz no esta vacia" do
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
