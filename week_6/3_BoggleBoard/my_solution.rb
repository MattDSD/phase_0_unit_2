# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: Arik Gadye ].


# 2. Pseudocode



=begin
Create word method 
def create_word(boogle_board, *coords)
  coords.map { |coord| boggle_board[coord.first][coord.last]}.join("")
end

puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> returns "rad"

# Refactored Solution



# DRIVER TESTS GO BELOW THIS LINE
p create_word(boggle_board, [0,0], [1,1], [0,2], [1,3])  == "boat"

=end 

# 3. Initial Solution
class BoggleBoard
	attr_accessor :board
 def initialize(board)
 	@board = board
 end
 def create_word(*coords)
 	coords.map { |coord| @board[coord.first][coord.last]}.join("")
 end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

p boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == 'dock'
p boggle_board.get_row(1) == 'iodt'
p boggle_board.get_column(1) == 'roca'


 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
p boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == 'dock'
p boggle_board.get_row(1) == 'iodt'
p boggle_board.get_column(1) == 'roca'

# 5. Reflection 
=begin
This was a fun exercise.  We were able to complete it fairly quickly.  This lesson actually 
taught me more about how to write my own test code more effectively.  Everything worked out fairly 
well.  It took me a moment to think about what needed to be done.  After we figured out the first 
test, the rest flowed pretty quickly. 

=end 
