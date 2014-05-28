# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

def initialize
@contents = []
@open = true
end

def open
@open = true
end

def close
@open = false
end 

def add_item(item)
@contents << item
end

def remove_item(item = @contents.pop) # the "pop is removing the last item of the arrsay ad returning it"
@contents.delete(item)
end

def dump  # what should this method return? It will return the puts statement stating the
# drawer is empty, but the method does not actually empty the drawer
puts "Your drawer is empty."
end

def view_contents
puts "The drawer contains:"
@contents.each {|silverware| puts "- " + silverware.type }
end

end

class Silverware
attr_reader :type, :clean # added clean to class for bonus section

# Are there any more methods needed in this class? We need to define a method for cleaning_silverware

def initialize(type, clean = true)
@type = type
@clean = clean
end

def eat
puts "eating with the #{type}"
@clean = false
end

def clean_silverware # added method for cleaning
	@clean = true
end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 
puts silverware_drawer.view_contents
silverware_drawer.dump
puts silverware_drawer.view_contents #What should this return?  it will return the puts statement that the 
# drawer is empty





#fork = silverware_drawer.remove_item(fork) fork was removed by earlier method, siverware_drawer.remove_item
# added by me
fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
silverware_drawer.view_contents
silverware_drawer.remove_item(fork)

silverware_drawer.view_contents

fork.eat

#BONUS SECTION
puts fork.clean # returns false becasue we have eaten with fork (fork.eat)

fork.clean_silverware #Will test in driver test code to make sure fork is clean after we pass in our method


# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end
 
 my_drawer = Drawer.new



assert {my_drawer.contents.empty? == true}

large_spoon = Silverware.new("large_spoon")
my_drawer.add_item(large_spoon)
my_drawer.view_contents

assert {my_drawer.contents.empty? == false}
assert {large_spoon.clean == true}


# fork test for our clean_silverware method

puts fork.clean == true


# 5. Reflection 


#This challenge was helpful for me. To go through the tests and figure out where the methods were failing is a great
#way of finding bugs and it helps me understand why TDD is so valuable.  I still struggle with the idea of writing
#these tests prior to writing code becasue at this stage because it is hard for me to visualize the code I want to 
#write before diving in a getting down in an editor.  I need to work on just slowing down and thinking about code.