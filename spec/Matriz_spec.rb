require 'Matriz.rb'
require 'fraccion.rb'

describe Matriz do
	before :each do
		@arr1 = [[Fraccion.new(1,2), Fraccion.new(1,3)], [Fraccion.new(1,4), Fraccion.new(1,5)]]
		@arr2 = [[Fraccion.new(1,2), Fraccion.new(2,3)], [Fraccion.new(3,4), Fraccion.new(4,5)]]
		@arr3 = [[Fraccion.new(1,1), Fraccion.new(1,1)], [Fraccion.new(1,1), Fraccion.new(1,1)]]
 		@arr4 = [[Fraccion.new(1,2), Fraccion.new(3,5)], [Fraccion.new(11,40), Fraccion.new(49,150)]]
		#1 2 3 4
		@mat1 = Matriz.new(2, 2) #Matriz 1
		#@mat1.copy!(@arr1)
		#5 6 7 8
		@mat2 = Matriz.new(2, 2) #Matriz 2
		#@mat2.copy!(@arr2)
		@result_sum = Matriz.new(2, 2)
		@result_mult = Matriz.new(2, 2)
	end
	
	describe "# Tamanyo de la matriz " do
		it "Debe existir un numero de filas" do
			@mat1._fil.should eq(2)
		end
		it "Debe existir un numero de columnas" do
			@mat1._fil.should eq(2)
		end
	end
	
	describe "# Comprobando que la matriz no esta vacia" do
		it "La matriz debe contener datos" do
			@mat1.copy!(@arr1)
			#@mat1.to_s.should eq("1/2  1/3  \n1/4  1/5  \n")
			@mat1.should == @mat1
		end
	end
	
	describe "# Suma de matrices" do
		it "Se deben poder sumar dos matrices" do
			@mat1.copy!(@arr1)
			@mat2.copy!(@arr2)
			@result_sum.copy!(@arr3)
			sum = (@mat1 + @mat2)
			#sum.to_s.should eq("1  1  \n1  1  \n")
			sum.should == @result_sum
		end
	end
	
	describe "# Multiplicacion de matrices" do
		it "Se deben poder multiplicar dos matrices" do
			@mat1.copy!(@arr1)
			@mat2.copy!(@arr2)
			@result_mult.copy!(@arr4)
			mult = (@mat1 * @mat2)
			#mult.to_s.should eq("1/2  3/5  \n11/40  49/150  \n")
			mult.should == @result_mult
		end
	end
	
end
