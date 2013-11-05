require 'Matriz.rb'


	Mat_A = Matriz.new(2,2)
	Mat_A.read()
	Mat_A.to_s

	Mat_B = Matriz.new(2,2)
	Mat_B.read()
	Mat_B.to_s
	
	puts ""
	puts "Sum:"
	(Mat_A+Mat_B).to_s
	
	puts ""
	puts "Prod:"
	(Mat_A*Mat_B).to_s

	
