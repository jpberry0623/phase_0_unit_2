# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def mode(array)
array.each do|x| array.count(x) > 1}
end




# 3. Refactored Solution

def mode(array)
array.select{|x| array.count(x) > 1}.uniq

end



# 4. Reflection 