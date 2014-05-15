# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [ with: Morgan Oleary].

# 1. Pseudocode


# What is the input: an array of numbers
# What is the output: the sum of each element of the array

=begin
Pseudocode:
define a method called total
define an argument that is an array
define variable called sum and set it equal to zero
iterate through the array (.each)
add the sum to each element of the array
return the sum of the array

# What is the input: an array of strings and numbers
# What is the output: a grammatially correct sense

define a method called "sentence_maker"
define a single argument (sentence)
Combine the strings together using sentence.join
add a space in between the words
call capitalize to capitalize first word
add "." to the string
=end


# 2. Initial Solution

def total(numbers)
	sum = 0
	numbers.each{|x| sum += x}
	return sum
end


def sentence_maker(sentence)
sentence.join(" ").capitalize + "."
end
	



# 3. Refactored Solution
#We both decided that our code was DRY and accomplished our pseudocode as quickly as we knew how.



# 4. Reflection 

#Working on this challenge really helped me understand how certain built in methods are called and the difference 
#between them modifying an array and changing it. originally for the sentence_maker method we were going to call
# join and capitalize on seperate lines, I realized not only was this unnecessary, but it would not work because
# we had to call both on the array in the same code to modify the array the way we intended.




