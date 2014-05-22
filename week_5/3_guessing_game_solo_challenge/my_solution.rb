# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: integer as an argument for games answer
# Output: low if guess is less tha answer, high if guess is above answer, correct if guess == answer
# Steps: 
#define class for guessing game that take one argument when new instance of object is created
# define last guess as instance variable and set to nil so they is no guess vlaue upon creating new onject of the class
#define method for guess that takes one argument for guess and uses if/else statements to retunr value of guess
# define solved method that evaluates whether last guess is equal to answer


# 3. Initial Solution
=begin
class GuessingGame
  def initialize(answer)
  	@answer = answer
  	@last_guess == nil
    end

  
  def guess(last_guess)
  	@last_guess = last_guess
 	if @last_guess > @answer 
 	return :high 
 	elsif @last_guess < @answer
 	return :low 
 	else
 	return :correct
   end
end

  def solved?
  	@last_guess == @answer
  end
end

=end


# 4. Refactored Solution
class GuessingGame
  def initialize(answer)
  	@answer = answer
  	@last_guess == nil
    end

  
  def guess(last_guess)
  	@last_guess = last_guess
 	return :high if @last_guess > @answer 
 	return :low if @last_guess < @answer
 	return :correct if @last_guess == @answer
   end

  def solved?
  	@last_guess == @answer
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

fun_guess = GuessingGame.new(15)

p fun_guess.solved? == false

p fun_guess.guess(10) == :low
p fun_guess.guess(20) == :high
p fun_guess.guess(15) == :correct

p fun_guess.solved? == true




# 5. Reflection 

# This challenge was fairly straightforward.  Some of the code in the readme file give clues as to how to structure the method definitions
# I seems to always want to use an if, else statement in my code which is a bad habit that I need to break out of.  I refactored the code
# after using an initial if else when i realized the else was not needed. The challenge also got me thinking about symbols, why they are
# used and how they differ from strings and other objects.  It led me here: https://www.youtube.com/watch?v=mBXGBbEbXZY. I Still need 
# practice with writing ruby to get a tighter hold of syntax so it is more intuitive and I dont need to think about it as much.  I think
# this is something that will come naturally as I write more code.
