# U2.W4: Homework Cheater!


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: firstname, lastname, date, dead/alive, male/female
# Output: paragraph with string interpolation of all given arguments
# Steps:
=begin
define method essay_writer
give arguments of inouts above
set arguments as instance varibles
create if else statement o differentiate male/female and dead alive pronouns.
define variable to call lastname only
=end
        
# 3. Initial Solution

def essay_writer(firstname, lastname, date, dead_or_alive, quote, male_or_female)
@firstname = firstname.capitalize
@lastname = lastname.capitalize
@date = date
@dead_or_alive = dead_or_alive
@quote = quote
@male_or_female = male_or_female
	if male_or_female == "male"
	they = "He"
	else
	they = "She"
	end

	if dead_or_alive == "dead"
		was = "was"

	else
		was = "is" 
	end

their = "#{lastname}'s"


puts " What is your title?"
	title = gets.chomp.upcase
puts "#{title}"
puts "#{firstname} #{lastname} #{was} a great person who forever changed the world we live
in today.  #{they} always stood strong in the face of adversity and never gave up when the going got tough. 
#{they} is famous for saying, \"#{quote}!\" #{their} most famous accomplishment happened on #{date}, and from 
that point forward, it has been remembered as an important date in history"

end


# 4. Refactored Solution


# 1. DRIVER TESTS GO BELOW THIS LINE
p essay_writer("mahatma", "ghandi", "09/20/1932", "dead", "You must be the change you wish to see in the world", "male") == 
"Mahatma Ghandi was a great person who forever changed the world we live in today.  He always stood strong in the face of 
adversity and never gave up when the going got tough. He is famous for saying, \"You must be the change you wish to see in 
the world!\" Ghandi's most famous accomplishment happened on 09/20/1932, and from that point forward, it has been remembered 
as an important date in history"




# 5. Reflection 

#this challenge helped me practice string interpolation and really made me research the deifference in instance variables
# , global and class variables to understand the difference. I also struggled with designing a test to start off the challenge
# which led me to begin with code and work to the test.  I struggled in a few areas, but i really enjoy getting into those
#areas where I have to research becasue I know it heightens my abilities.









