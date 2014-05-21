# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself]

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# define method that takes two arguments, on for playing board and another for letter position
# create block to pass array indexs in to identify letters and then join to form a  word



# Initial Solution

  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
#define method that takes row position(integer) as argument
#playing board(array of arrays) equal to local variable
# used index of local variable to locate desired row.


# Initial Solution
def get_row(row)
	boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
    boggle_board[row]
end




# Refactored Solution

def get_row(row) # this could be done if the original boggle board was declared a global variable
 
    $boggle_board[row]
end


# DRIVER TESTS GO BELOW THIS LINE

p get_row(1) #=>  ["i", "o", "d", "t"]


# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# define method that takes a column number(integer) as an argument
# set boggle board equal to array of playing strings
# pass method to board to get desired column

# Initial Solution
def get_col(col)
    boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
boggle_board.transpose[1]

end

p get_col(1)  #=>  ["r", "o", "c", "a"]


# Refactored Solution

def get_col(col)
    
  $boggle_board.transpose[1] # this could be done if the original boggle board was declared a global variable
end

# DRIVER TESTS GO BELOW THIS LINE
p get_col(1)  #=>  ["r", "o", "c", "a"]

# Reflection 

# The solution again here was fairly intuitive, but refactoring is always much harder for me because I only know enough ruby to solve
# the problem at hand and usually have to search around for better solutions for refactoring, but I guess thats how I will learn!
# I came up with using a global variable instance so I did not need to redefine the boggle board in each method definition, but in
# some of my research it appears that declaring global variable has some pretty big downsides once you start considering bigger
# picture problems when designing web apps (i.e http://stackoverflow.com/questions/5927479/why-no-one-use-global-dollar-sign-variable).
# this leads me to believe that my refactored code is perhaps not the best solution, but it does create more concise, DRY code as far 
# as I can tell. I will keep digging for examples of when to use or not use global variables to come to a conclusion on this matter.