require "lib/fraccion.rb"

describe Fraccion do
  before :each do
    @f1 = Fraccion.new(2,4)
  end  

  describe "# almacenamiento numerador y denominador" do
    it "Debe existir un numerador" do
      @f1.num.should eq(2) #accede a num(), igual a se debe invocar al metodo num() para obtener el numerador
    end
    it "Debe existir un denominador" do
      @f1.den.should eq(4) #accede a den (),igual a se debe invocar al metodo denom() para obtener el denominador
    end
  end
  
  describe "# forma reducida" do
    it "Debe estar en su forma reducida" do
      f2 = @f1.reduccion
      f2.num.should eq(1)
      f2.den.should eq(2)
    end
  end
  
  describe "# mostrar" do
    it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
      @f1.to_s.should eq("2/4")
    end
    it "Se debe mostar por la consola la fraccion en formato flotante" do
      @f1.to_f.should eq(0.5)
    end
  end
  
  describe "# Comparacion de fracciones" do
    it "Se debe comparar si dos fracciones son iguales con ==" do
      f2 = Fraccion.new(1, 2)
      (@f1 == f2).should eq(true)
    end
  end
  
  describe "# Absoluto" do
    it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
      f2 = Fraccion.new(-1, 2)
      f2 = f2.abs
      f2.num.should eq(1)
      f2.den.should eq(2)
    end
  end
  
  describe "# Reciproco" do
    it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
      f2 = @f1.reciprocal
      f2.num.should eq(4)
      f2.den.should eq(2)
    end
  end
  
  describe "# Menos Unario" do
    it "Se debe calcular el opuesto de una fraccion con -" do
      f2 = -@f1
      f2.num.should eq(-2)
      f2.den.should eq(4)
    end
  end
  
  describe "# Operaciones" do
    it " Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
      f2 = Fraccion.new(6, 8)
      f2 = @f1 + f2
      f2.num.should eq(5)
      f2.den.should eq(4)
    end
    it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
      f2 = Fraccion.new(6, 8)
      f2 = f2 - @f1
      f2.num.should eq(1)
      f2.den.should eq(4)
    end
    it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducid" do
      f2 = Fraccion.new(3, 4)
      f2 = @f1 * f2
      f2.num.should eq(3)
      f2.den.should eq(8)
    end
    it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
      f2 = Fraccion.new(3, 4)
      f2 = @f1/f2
      f2.num.should eq(2)
      f2.den.should eq(3)
    end
    it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reduc" do
      f2 = Fraccion.new(3, 4)
      f2 = @f1%f2
      f2.to_s.should eq("0/1")
    end
  end
  
  describe "# Comparaciones" do
    it "Una fraccion menor que otra" do
      f2 = Fraccion.new(3, 2) # = 1.5
      #@f1 = (2/4) = 0.5
      (@f1 < f2).should eq(true)
    end
    it "Una fraccion mayor que otra" do
      f2 = Fraccion.new(3, 2)
      (f2 > @f1).should eq(true)
    end
    it "Una fraccion menor igual que otra" do
      f2 = Fraccion.new(3, 2) #@f1 = (2/4)
      (@f1 <= f2).should eq(true)
    end
    it "Una fraccion mayor igual que otra" do
      f2 = Fraccion.new(3, 2) #@f1 = (2/4)
      (f2 >= @f1).should eq(true)
    end
  end
  
  describe "# Operaciones Conjuntas" do
    it "Se debe poder comprobar operaciones conjuntas" do
      f2 = Fraccion.new(3, 2) #@f1 = (2/4)
      NEUTRO = Fraccion.new(0, 1)
      #if ((@f1%f2).to_f == 0) FUNCIONA
      if ((@f1%f2) == NEUTRO) #FUNCIONA
	resultado = ((-@f1) * f2).abs #-2/4 * 3/2 = -6/8 = -3/4  => |-3/4| = 3/4
      else
	 resultado = NEUTRO
      end
      #resultado.to_s.should eq("0/1") => DEBE FALLAR y FALLA
      resultado.to_s.should eq("3/4")
    end
  end
  
end