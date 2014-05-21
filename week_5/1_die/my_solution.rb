# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:number of sides for the die
# Output: random value of 1 up to number of sides
# Steps:
 #Create a class for die(dice)
# Define initialize method that takes one argument for sides of die
# define method for sides so if sides is less than 1, raises error
# define method for rolling the die that returns random number between 1..6
# raise arrer of argument(sides) is less than 1


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("Sides must be greater than 0") if sides < 1
  end
  
  def sides
     @sides > 0
    	return @sides
   	end
  
  def roll
    value = rand(1..sides)
    return value
  end

end


# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    raise(ArgumentError, "Sides must be greater than 0") if sides < 1
  end
  
  def sides
     @sides > 0
    	@sides
   	end
  
  def roll
    value = rand(1..sides)
     value
  end

end


# 1. DRIVER TESTS GO BELOW THIS LINE

p  Die.method_defined? "sides"  # test to see if sides is defined as a method
p  Die.method_defined? "roll" # test to see if roll is defines as a method
p  Die.new(0) rescue $!.message == ("Sides must be greater than 0") # test to make sure argument is raised if sides < 1

testing_die = Die.new(6) #Create an new instance of an object for testing
number =testing_die.roll

p testing_die.sides ==6 # tests sides
p (1..6).include?(number) # tests to make sure roll returns random number within range


# 5. Reflection
=begin
This challenge helped me understand a little more about classes and onjects in Ruby, and OOP in general.  The solution to the problem came 
to me faster than I expected.  The part of the challenge that I stumbled on was trying to find the right code to test my argumenterror.
I had to look at a stackoverflow example to come up with the solution, but canot seem to make it pass.  Overall I think my solutio is good.  
For the refactoring I really converted the methods to have implicit returns, but the code is DRY and the methods are to the point. I will 
have to look at others solutions to see more elegant solutions.
=end