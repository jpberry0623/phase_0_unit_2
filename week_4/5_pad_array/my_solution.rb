# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input: a number rep. length and a value of an array item
# What is the output: 1: a new array with the new/same items
#             	      2: the same array with new/same items
# What are the steps needed to solve the problem?
=begin
create a class with two methods def pad & def pad! that take two arguments(size, value)
set default value = nil
pad will create a new array with changed values(non destructive)
pad! will replace values in same array(destructive)

create a duplicate/clone of pad and set it equal to a new array
create if statement so if length of pad array is less that size, return same array
else size-length times pushvalue to new array

	repeat process for pad! without creating new array.
	change code so padd value are pushed into self rather than new array.

=end


# 2. Initial Solution

class Arrays

	def pad(size, pad_value=nil)
			new_array = self.clone
			if self.count <= size
		else 
			(size-self.count).times {new_array << pad_value}
		return new_array
    end


	def pad!(size, pad_value=nil)
		if self.count <= size
			return self
		else 
			to_add = size - self.count
		to_add.times {pad_value << self}
		return self
	end
	end
end

# 3. Refactored Solution

class Array

	def pad(size, pad_value=nil)
			new_array = self.clone
			if (size-self.count)>0
			(size-self.count).times {new_array << pad_value}
		end
		return new_array
    end


	def pad!(size, pad_value=nil)
		if (size - self.count) > 0
		(size - self.count).times {self << pad_value}
		end
		return self
	end
end
# reflection

# THis challenge was again tough for me to work out.  It makes me realize I need to work on my ruby syntax so I do not need to search 
# for appropriate code.  At first I did not understand the problem the code needed to solve.  But after reading the rpsec test for while
#  I finally understood the need for a new array or altering the current array.  It was also helpful for me to refactor the solution and
# learn that I did not need the if/else statement, but just the one conditional. I feel like there is an even better way to go about 
# solving this problem, but my time is running lowas far as getting through this weeks material so I want to make sure I complete 
# everything, but when I have time I will come back and see if I can come up with a better solution and I will also look at others code
# to learn things I need to know.


#



