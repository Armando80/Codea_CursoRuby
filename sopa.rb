 class Board

	def initialize(board_template)
		@change = board_template.gsub(/[X]/) {|x| ("A".."Z").to_a.sample}
		@pboard = @change.scan(/.{5}/).map!{|row| row.split("")}
	end

	def to_s (board=nil)
    if board.nil?
      board = @pboard
    end
    str =""
    board.each do |row|
      row.each do |char|
      	str += char + "   "
      end
      str += "\n"
    end
    str
	end

  def include?(word)
    result = false
    transposed = @pboard.transpose


    #read in row
    @pboard.each do |row|
      current_row = row.join
      if current_row.include?(word) || current_row.include?(word.reverse)
        result = true
      end
    end

    #read in columns with reverse
    transposed.each do |col|
      current_col = col.join
      if current_col.include?(word) || current_col.include?(word.reverse)
         result = true            
      end 
    end
    
    diagonal_board = diagonal(@pboard.transpose)

    diagonal_board.transpose.each do |row|
      current_row = row.join
      if current_row.include?(word) || current_row.include?(word.reverse)
        result = true
      end
    end

    result
  end

  def diagonal(board=nil)
    if board.nil?
      board = @pboard
    end
    board.each_with_index do |row, index|
      index.times do
        row.unshift("*")  
      end
      (board.length-index).times do
        row.push("*")
      end
    end
    board
  end

end


board = Board.new("POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR")
puts board 

puts board.include?("CANCION")
puts board.include?("POEMA")
puts board.include?("RONDAS")
puts board.include?("RIMAS")

board = Board.new("XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX")
puts board

puts board.include?("MANGO")
puts board.include?("SANDIA")
puts board.include?("MELON")
puts board.include?("PLATANO")

board = Board.new("OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX")
puts board

puts board.include?("ROJO")
puts board.include?("VERDE")
puts board.include?("AZUL")
puts board.include?("NEGRO")

