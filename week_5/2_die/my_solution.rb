# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an array of random values(Strings or Integers)
# Output: A random value from the array that is passed in
# Steps:
# Define class Die which takes an array as a single argument
# Define method initialize and declare argument a local variable
# raise argument if nothing is passed into new instance of the class
# Define method sides and set sides equal to length of array argument/parameter
# define method roll which returns a random value from array



# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("but nothing was raised") if @labels.length < 1
	end

  def sides
  	sides = @labels.length
  	sides
  end

  def roll
  	value = @labels.sample
  	value
  end
end



# 4. Refactored Solution

#I tried to keep my initial code dry and short, thus I think it as refactored as I can make it for the time being.



# 1. DRIVER TESTS GO BELOW THIS LINE
a = ("a".."z").to_a #make new array to pass into instance of object
b = (1..17).to_a #make new array to pass into instance of object
johns_dice = Die.new(a)  #create new instance of class
joes_dice = Die.new(b) #create new instance of class


p johns_dice.instance_of? Die # testing to make sure we created a valid new instance of class
p johns_dice.sides == 26 # test to make sure side match array length
p a.include?(johns_dice.roll) # test to make sure roll value is included in array
p joes_dice.sides == 17 # test to make sure side match array length
p b.include?(joes_dice.roll) # test to make sure roll value is included in array

# 5. Reflection 

#I again came up with a solution relatively quickly and it seemed to work after a little tweaking. I used simlar code to the last
# challenge just changing the sides value to the length of the array given and for roll returning a sample value of that array.
# I still struggle a little with writing driver test code, its hard for me to write tests before I can totally visualize the code and 
# what it is doing, but I think that will come from coding more and getting some of the object oriented concepts glued in my brain.
 
