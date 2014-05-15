# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [with: Morgan Oleary].

# 1. Pseudocode

# What is the input: an array of grades(numbers)
# What is the output:letter grade associated with the average of an array of grades

=begin
pseudocode:
define a method called get_grade
method has to accept an array as an argument
array will be grades that do not exceed 100
define average of numbers in side of array
should return "A" when average is >=90
should return "B" when average is >=80
should return "C" when average is >=70
should return "D" when average is >=60
should return "F" when average is < 60
=end



# 2. Initial Solution
def get_grade(grades)
total = 0
grades.each { |x| total += x}
average = total/grades.length

    if average >= 90
    return "A"
    elsif average >= 80
    return "B"
    elsif average >= 70
    return "C"
    elsif average >= 60
    return "D"
    else 
    return "F"
    end
end




# 3. Refactored Solution
#We decided that this solution was the most refined we could make it.  I suggested we might try a case statement, b
#but after we both did some research it didn't seem like it made the code any DRYer or optimized.



# 4. Reflection 


# Working on this challenge was a great way for us to get more practice with the if else statement and to think about 
# how best to average the items in the array.  At first we tried to call the an average function to make things easier, 
# but our attempts failed and we resorted to the good old way of summing the elements and dividing.  



