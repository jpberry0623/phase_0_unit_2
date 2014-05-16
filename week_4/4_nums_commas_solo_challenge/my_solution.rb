# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input: a number with no commas
# What is the output: a number with appropriately placed commas
# What are the steps needed to solve the problem?

=begin
define method deperate_comma with one argument (num)
define new variable = convert number to a string
find length of string
use if else statement and insert method to place commas appropriately
return numbers
=end
	
# 2. Initial Solution

#Driver test code

p seperate_comma(100) == "100"
p seperate_comma(1000) == "1,000"
p seperate_comma(10000) == "10,000"
p seperate_comma(100000) == "100,000"
p seperate_comma(1000000) == "1,000,000"
p seperate_comma(10000000) == "10,000,000"
p seperate_comma(100000000) == "100,000,000"
p seperate_comma(1000000000) == "1,000,000,000"

def seperate_comma(num)
number = num.to_s
	if number.length == 4
		 number.insert(1,",")
	elsif number.length == 5
		number.insert(2,",")
	elsif number.length == 6
		number.insert(3,",")
	elsif number.length == 7
		number.insert(1,",")
		number.insert(5,",")
	elsif number.length == 8
		number.insert(2,",")
		number.insert(6,",")
	elsif number.length == 9
		number.insert(3,",")
		number.insert(7,",")
		elsif number.length == 10
		number.insert(1,",")
		number.insert(5,",")
		number.insert(9,",")
		
	else 
	p num.to_s
	end 
end


# 3. Refactored Solution

def seperate_comma(num)
	number = num.to_s
	long = number.length
	

	while long > 3
		number.insert(long-3,",")
		long -= 3
	end	
	
	puts number
end

#Reflection

# This challenge was tough for me.  I came up with my initial solution using the if else statement, but from the beginning, I knew 
# there was a better more concise way of solving the problem, I just couldn't figure it out.  After I stared at the code for awhile
# I realized it was not going to come to me so I did a little research and finally came up with my refactored solution.  THis challenge
# forced me to think about my problem solving abilities and that I need to sharpen them up.  I think the solution should have come to me,
# but I did solve the problem with my own solution--it is just very bulky and not DRY or elegant at all.  I feel like my learning for 
# the week has come a long way, but I have much further to go.  I did this challenge in oder and did not save it for the end, so I still
# have the others to work on and solify my understanding of some topics.  So let me get back to it.






