# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Joel Yawili

def bakery_num(num_of_people, fav_food) # defining method with 2 arguments(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #defining hash "my_list" 3 key-value pairs (pie,cake,cookie)
  pie_qty = 0 # defining var of qty for pie --> 0
  cake_qty = 0 #defining var of qty for cake --> 0
  cookie_qty = 0#defining var of qty for cookie -->
  
  has_fave = false # setting this var to false

  my_list.each_key do |k| # iterating through my_list hash
    if k == fav_food #if key = fav_foos arg
        has_fave = true # then set has_fave var to true
        fav_food = k # and set the fav_food arg to k
    end
  end
  if has_fave == false #if has_fave is false
     raise ArgumentError.new("You can't make that food") #then we raise an argError
  else
    fav_food_qty = my_list.values_at(fav_food)[0] #otherswise set new var fav_food_qty = my_list 's first value
  if num_of_people % fav_food_qty == 0 #if remainder of num_of_people / fav_food = 0
    num_of_food = num_of_people / fav_food_qty # then set num_of_food var to the num of people/ fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)." #return string for above values
  else num_of_people % fav_food_qty != 0 # otherwise if num_of_people is not divisible by fav_food_qty
    while num_of_people > 0 # as long as num_of_people is above 0
        if num_of_people / my_list["pie"] > 0 #if num_of_people divided by value of pie key in my_list hash is above 0
            pie_qty = num_of_people / my_list["pie"] # then pie_qty is equal to num_of_people divided by pie key in my_list hash
            num_of_people = num_of_people % my_list["pie"] #set num_of_people variable equal to remainder num_of_people/pie key in my_list
        elsif num_of_people / my_list["cake"] > 0 # if num_of_people/cake key in my_list hash is above 0
            cake_qty = num_of_people / my_list["cake"]  #set cake_qty varibale equal to num_of_people/cake key in my_list hash
            num_of_people = num_of_people % my_list["cake"] #set num_of_people equal to remainder of num_of_people/cake key in my_list hash
        else
            cookie_qty = num_of_people #otherwise if cookie_qty is equal to num_of_people
            num_of_people = 0 then #set num_of_people variable equal to 0
        end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    #return string with above values
    end
  end
end






# Our Refactored Solution
def bakery_num(num_of_people, fav_food) # defining method with 2 arguments(num_of_people, fav_food)
  bakery_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
   #defining hash "my_list" 3 key-value pairs (pie,cake,cookie)
 pie_qty = 0 # defining var of qty for pie --> 0
 cake_qty = 0 #defining var of qty for cake --> 0
 cookie_qty = 0 #defining var of qty for cookie --> 0

  raise ArgumentError.new("You can't make that food") unless bakery_list.has_key?(fav_food)
     
     fav_food_qty = bakery_list.values_at(fav_food)[0]
    if num_of_people % fav_food_qty == 0
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
    else
    case fav_food
      when "pie"
        pie_qty = num_of_people / fav_food_qty
        cake_qty = (num_of_people % fav_food_qty) / bakery_list["cake"]
        cookie_qty = (num_of_people % fav_food_qty) % bakery_list["cake"]
      when "cake"
        cake_qty = num_of_people / fav_food_qty
        cookie_qty = num_of_people % fav_food_qty
      when "cookie"
        cookie_qty = num_of_people
     end
     return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end


#fixed error on this driver test
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."








#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 

# working on this challenge with a partner was a great experience.  We both had similar level of understanding as to what 
# the code was doing and how each mothod fucntioned.  Our road block came when it was time to refactor.  We ran out of time
# to refator together and ultimately I decided to reactor with a case statement to make th existing code more readable. 
# I also condensed the argument and fixed the driver code.  I think it is a good challenge, but it makes me fell like I 
# should be a little further in my ruby knowledge than I am now.  So next week will be devoted to catching up and getting 
# myself to a higher competency.




