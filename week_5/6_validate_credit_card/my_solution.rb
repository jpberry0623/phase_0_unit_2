# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself]

# 2. Pseudocode

# Input: credit card number as argument(integer)
# Output: test to see whether bahn algorithm factored cc number is divisible by 10
# Steps:

# take cc number ass argument for method
# convert to string and split each number into array to allow for easy access to each integer.
#if length is not equal to 16 raise argument error
# define method check_card
# within method define new array to push solution to
#iterate through number array and find each even indexed value
#if even multipley by two and push to new array, else just push value as is
# if number is over 10, split to individual integers and  and add together, then push to new array.
# add total and if divisible by 10, return true, else false


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(number)
		@number = number.to_s.split("").map(&:to_i)
		raise ArgumentError.new("Credit card number must be 16 digits long") if @number.length != 16
	end

	def check_card
		newArray = []
		@number.each_with_index do |num, index|
			if index % 2 == 0 
				newArray << (num * 2)
			else
				newArray << num
			end
		end
			
		total = 0
			newArray.each do |x|
				if x >= 10
					seperate = x.to_s.split("")
					x = seperate[0].to_i + seperate[1].to_i
					total += x
				else
					total += x	
				end

			end

		total % 10 == 0 ? true : false


		
	end
		
	

end
# 4. Refactored Solution

#It took me a long time to get the syntax for this and I can't come up with cleaner code than my initial attempt.


# 1. DRIVER TESTS GO BELOW THIS LINE

a = CreditCard.new(1234567891234567)

p a.check_card 



# 5. Reflection

# This challenge was very hard for me.  I had to review quite a bit of ruby docs to get the right syntx to make 
# my code work the way I hoped.  But I did have a clear plan to solve the problem from the beginning which worked
# well.  Overall the challenge helped me pick out and use the appropriate methods to get the job done and I think
# solution is fairly dry and concise. 
