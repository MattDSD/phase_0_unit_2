# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: Puru Dahal].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution
def create_word(boogle_board, *coords)
  coords.map { |coord| boggle_board[coord.first][coord.last]}.join("")
end

puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> returns "rad"

# Refactored Solution



# DRIVER TESTS GO BELOW THIS LINE
p create_word(boggle_board, [0,0], [1,1], [0,2], [1,3])  == "boat" 


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution
def row board,n
	return board[n-1]
end

# Refactored Solution
def row board,n
	board[n-1]
end

# DRIVER TESTS GO BELOW THIS LINE
p row board,2 = ["i", "o", "d", "t"] #true

# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution
 def column board, n
 	answer = []
 	board.each do |a|
 		answer << a[n-1]
 	end
 	answer 
 end 


# Refactored Solution
def column board, n
	board.map{|a| a[n-1]}
end 

# DRIVER TESTS GO BELOW THIS LINE
p column board,1 #=> ["b","i","e","t"]

# Reflection 
# This was a challenging problem for me.  I had to mostly learn from Puru on this one.  We learned a lot about 
# iterating through a nested array.  I feel slightly more comfortable with this material by the end. 
# I need to go back and read this material more thoroughly in Well Grounded Rubyist just to solidify the material. 
