# U2.W6: Refactoring for Code Readability


# I worked on this challenge with: Avi Fox-Rosen


# Original Solution
class CreditCard  # create class called CreditCard
	def initialize(credit_number) # define initialize method that accepts one argument (number)
		@number = credit_number.to_s.split("").map(&:to_i) # define instance variable of number equal to argument 
		# number which we 
		# turn to string and split each char to array then map each array element back to integer
		raise ArgumentError.new("Credit card number must be 16 digits long") if @number.length != 16
	    # raise argument error if length of array is not equal to 16 characters
	end

	def check_card # create new method called check_card
		newArray = [] # set empty array called newArray
		@number.each_with_index do |num, index| # iterate through instance varibale @number array each with index 
			if index % 2 == 0  # if index value is divisible by 2
				newArray << (num * 2) # then double value at index position  and push to new array
			else
				newArray << num # psuh to new array with no change/modification
			end
		end

		total = 0 # set toal equal to 0
			newArray.each do |x| # iterate through each value in new array
				if x >= 10  # with x being greater than or equal to 10
					seperate = x.to_s.split("") # create new varibale seperate which is equal to x to a string split to array on each char
					x = seperate[0].to_i + seperate[1].to_i #  add values of array together 
					total += x # add sum to total
				else
					total += x	# add x to total
				end

			end

		total % 10 == 0 ? true : false # if total is divisible by 10 return true, else false

	end




# Refactored Solution

class CreditCard  
	def initialize(credit_number) 
	    raise ArgumentError.new("Credit card number must be 16 digits long") if credit_number.to_s.length != 16
		  @number = credit_number.to_s.split("").map(&:to_i) 
	end

	def check_card 
		@number.each_with_index do |num, index| 
			if index % 2 == 0  #
				card_digits << (num * 2) 
			else
				card_digits << num 
		end

		  total = 0 
			card_digits.each do |digit| 
				if digit >= 10  
					seperate = digit.to_s.split("") 
					sum = seperate[0].to_i + seperate[1].to_i 
				else
					total += digit	
				end
      end

		total % 10 == 0 
	end

end






# DRIVER TESTS GO BELOW THIS LINE

#test fail
fake_card = CreditCard.new(1234567891234567)
  p fake_card.check_card

#test pass
legit_card = CreditCard.new(4563960122001999)
  p legit_card.check_card

def assert
    raise "Assertion Failed!" unless yield
    puts "Assertion passed!"
end

assert {legit_card.check_card}

assert {fake_card.check_card}

assert {CreditCard.new(12345).check_card}

# Reflection

# This challenge was perfect for me.  I had some questions I wanted to ask a fellow boot about pseudocode and refactoring.
# Going through my original code line by line was also helpful to see what areas I was able to come up with on my own vs.
# which parts I had to research to find the methods.  Unfortunately most of the final solution I had was researched which
# lets me know I need to study more ruby syntax and look at more code so these methods and operators come to me with 
# greater ease.  My partner on this refactoring did a super job of navigating through both the driver code and the original
# code.  In the end the only major changes we made were to some of the varibale names for better readability along with
# changing some ordering at the top of the initialize method to throw an error based on the number passed into the method,
# rather than changing the method firth, then evaluating it.  Great idea by my partner.  















