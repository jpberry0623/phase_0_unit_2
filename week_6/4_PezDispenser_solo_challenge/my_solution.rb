# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# input is array of flavors for new pez dispenser
# output is contents of pez dispenser
# define initialize method of PezDispenser class to to take flavors as argument
# define pez_count method to add or subtract pez and return existing number
# define method take_pez for eating
# define method for order of pez



# 3. Initial Solution

class PezDispenser
 
	def initialize(flavors)
	@flavors = flavors
	end

	def add_pez(pez)
		@pez = pez
		@flavors << @pez
	end

	def get_pez
		return @flavors[0]
		@flavors.shift
	end

	def see_all_pez
		puts @flavors.inspect
	end
	def pez_count
		pez_num = 0
		@flavors.each {|x| pez_num += 1}
		return pez_num
	end


end
 


# 4. Refactored Solution

class PezDispenser
 
	def initialize(flavors)
		@flavors = flavors
	end

	def add_pez(pez)
		@pez = pez
		@flavors << @pez
	end

	def get_pez
		@flavors[0]
		@flavors.shift
	end

	def see_all_pez
		puts @flavors.inspect
	end
	
	def pez_count
		pez_num = 0
		@flavors.each {|x| pez_num += 1}
		pez_num
	end


end





# 1. DRIVER TESTS GO BELOW THIS LINE

#flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
#super_mario = PezDispenser.new(flavors)
#puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
#puts "Here's a look inside the dispenser:"  
#puts super_mario.see_all_pez 
#puts "Adding a purple pez."
#super_mario.add_pez("purple")   # mmmmm, purple flavor
#puts "Now you have #{super_mario.pez_count} pez!"
#puts "Oh, you want one do you?"
#puts "The pez flavor you got is: #{super_mario.get_pez}"
#puts "Now you have #{super_mario.pez_count} pez!"


def assert
	raise "thats not quite right" unless yield
	puts "Passed"
end


flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry) # removed shuffle method for tests
super_mario = PezDispenser.new(flavors)

assert {super_mario.see_all_pez == @flavors} 
assert {super_mario.pez_count == 9}
assert {super_mario.get_pez == "cherry"}
assert {super_mario.pez_count == 8}


super_mario.add_pez("blueberry")
super_mario.add_pez("coconut")

assert {super_mario.pez_count == 10}
assert {super_mario.see_all_pez == @flavors}





# 5. Reflection 

#This challenge was pretty straight forward.  I designed some simple methods within the class to answer the 
# questions and address the functionality the end user requested.  I left the methods as is for refactoring, but
# I think if I had more time to work on the challenge I could combine a couple of the methods together to do more
# than one task, but that might make the code less understandable.  For refactoring I simply removed some of the
# return statements where an implicit return was implied.  Overall I;m happy with my understanding of OOP and 
# being able to navigate objects in Ruby.  This solution cmae to me fairly quickly and helps me think my under_
# standing of the material is starting to progress despite me not having as much time as I would like to devote
# to prep due to my full time employment.

