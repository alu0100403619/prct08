
class Matriz

	attr_reader :_fil, :_col, :_Matriz
	
	#-------------------------------------------------------------------
	def initialize(fil, col)
		@_fil, @_col = fil, col
		#@_Matriz = array
		@_Matriz = Array.new{Array.new()}
		
		for i in (0...@_fil)
			@_Matriz[i] = Array.new()
		end
		
	end
	#-------------------------------------------------------------------
	def read()
		for i in (0...@_fil)
			for j in (0...@_col)
				print "mat[#{i}][#{j}]: "
				value = gets
				puts ""
				@_Matriz[i][j] = value.to_i
			end
		end 
	end
	#-------------------------------------------------------------------
	def copy!(other)
		@_fil = other.length
		@_col = other[0].length
		for i in (0...other.length)
			#arr = other[i]
			for j in (0...other[i].length)
				@_Matriz[i][j] = other[i][j]
			end #for j
		end #for i
	end
	#-------------------------------------------------------------------
	def to_s()
		cad = ""
		for i in (0...@_fil)
			for j in (0...@_col)
				cad << "#{@_Matriz[i][j]}  "
			end
			cad << "\n"
		end
		cad
	end
	#-------------------------------------------------------------------
	def +(other)
		sum = Matriz.new(@_fil, @_col)

		for i in (0...@_fil)
			for j in (0...@_col)
				sum._Matriz[i][j] = (@_Matriz[i][j] + other._Matriz[i][j])
			end			
		end

		sum
	end
	#-------------------------------------------------------------------
	def *(other)
		mult = Matriz.new(@_fil, @_col)	 
		 
		for i in (0...@_fil)
			for j in (0...other._col)
			
				aux = 0
				for k in (0...other._fil)
					aux += (@_Matriz[i][k] * other._Matriz[k][j])
				end #for 
				mult._Matriz[i][j] = aux
			
			end #for j

		end #for i
		mult
	end
	#-------------------------------------------------------------------
end

