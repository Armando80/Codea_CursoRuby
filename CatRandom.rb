def generate_board
	board = []
	3.times do
		line = []
		3.times do
			line << ["x","o"].sample
		end
		board << line
	end
	return board
end

p generate_board

def generate_board2
	board = []
	b1 = ["x", "o", "x"]
	b2 = ["o", "x", "o"]
	b3 = ["x", "o", "x"]
	
	board << b1.shuffle
	board << b2.shuffle
	board << b3.shuffle
	
	return board	
end

p generate_board2