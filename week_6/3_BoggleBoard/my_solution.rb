# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode

# define initialize method for class that sets playing board as instance variable
# define method that takes accepts coordinates from a nested array grid as argument and returns string of those items
# define method that takes board nested array index and joins items to form a string of letter
# define method to take column of nested array and join items to make a string


# 3. Initial Solution
class BoggleBoard 

	def initialize(board)
		@board = board
	end

	def create_word(board, *coords)
    	coords.map { |coord| board[coord.first][coord.last]}.join("")
	end

	def get_row(board, row)
		 @board[row].join("")
	end

	def get_column(board, column)
		@board.transpose[column].join("")
	end
 
end


# 4. Refactored Solution

class BoggleBoard 

	def initialize(board)
		  @board = board
	end

	def create_word(*coords)
    	  coords.map { |coord| @board[coord.first][coord.last]}.join("")
	end

	def get_row(row)
		  @board[row].join("")
	end

	def get_column(column)
		  @board.transpose[column].join("")
	end
 
end

dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)


# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:


puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"

# implement tests for each of the methods here:
puts boggle_board.get_row(0) == "brae"
puts boggle_board.get_row(1) == "iodt"
puts boggle_board.get_row(2) == "eclr"
puts boggle_board.get_row(3) == "take"

puts boggle_board.get_column(0) == "biet"
puts boggle_board.get_column(1) == "roca"
puts boggle_board.get_column(2) == "adlk"
puts boggle_board.get_column(3) == "etre"

puts boggle_board.create_word([3,2]) == "k"


# 5. Reflection 

# This challnege definately helped me figureout some of the small mistakes I made on the original boggleboard
# challenge.  It also helped me to understand the instance varibales a little better.  In my original solution
# last week I had set the board as a global varibale so it could be accessed by all of the methods.  After this 
# weeks readings and further research, global varibales appear to be a no-no.  I also added the join method to
# the row and column methods to make a string for each of the outputs. The tests that I wrote were simple boolean
# puts statements rather than an assert method which was probably not the way to go.  When I have time to circle 
# back around I will get a better assert method for testing in place.





