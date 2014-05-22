# U2.W5: Virus Predictor

# I worked on this challenge [by myself].

# EXPLANATION OF require_relative
# Require relative allows us to access outside data or functionality from an outside file within our current directory.  it differs from Ruby's built in require method 
# in that we can access file we have created for our program, while require would be for accessing files we have properly installed on 
# system for use.
#
require_relative 'state_data'
=begin
class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread) # this method has 5 arguments which will all
    @state = state_of_origin                                                               # need to be called when we create a new instance
    @population = population                                                               # of the virus_predictor class.  Each instance of the 
    @population_density = population_density                                               # class will have these  instance variables when called.
    @region = region
    @next_region = regional_spread
  end

  def virus_effects  #HINT: What is the SCOPE of instance variables?  instance varibale are available within any instance of an onject in the 
    predicted_deaths(@population_density, @population, @state)      # virus_predictor class
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method.

  # this makes the method private. meaning an instance of the virus_predictor class does not have access to call this method.
  # it takes three arguments, the pop density, pop, and state. it uses an if else statement to determined the number of deaths based
  # multiplying the pop density with a percentage.
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) # in months

    # this method is for the speed of the spread of the virus based on the two arguments.  using an if/else state we evaluate
    #  pop density and state by setting a speed varibale equal to zero and incrementing it by an integer that represents months to 
    # determined the speed. 
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end


    puts " and will spread across the state in #{speed} months.\n\n"
  end

end
=end

# Refctored=======================================================================


class VirusPredictor    # Since "state_data" already has all of the information we need, it doesnt make sense to redefine each
                        # argument.  We just need to pull the data in our initialize method.  This is much dryer, now we only
                        #have to use the state name as an argument each time we initialize a state to get its data, rather than 5
                        # seperate arguments.  Even though region and regional_spread were not used in the method, I left them in
                        # my refactored method.  This took me a while to figure out exact syntax since I had limited experience in
                        # Ruby with nested hashes.
  def initialize(state)
    @data = STATE_DATA[state]
    @state = state
    @population = @data[:population]
    @population_density = @data[:population_density]
    @region = @data[:region]
    @next_region = @data[:regional_spread]
  end

  def virus_effects  
    spread_and_deaths
  end

  private
  def spread_and_deaths   # we can combine predicted_deaths and speed_of_spread into one method since they rely on the same inputs of info.
  speed = 0.0 # in months
  case @population_density.floor
    when 0..49
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    when 50..99
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    when 100..149
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    when 150..199
      number_of_deaths = (@population * 0.3).floor
      speed += 1.0
    else
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    end

    puts "#{@state} will lose #{number_of_deaths} people in this outbreak"
    puts "and the virus will spread across the state in #{speed} months.\n\n"
  end

  
end





# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects


jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

=end
#New Driver test code

alabama = VirusPredictor.new("Alabama")
alabama.virus_effects  #=> Alabama will lose 482202 people in this outbreak and the virus will spread across the state in 2.0 months.

new_jersey = VirusPredictor.new("New Jersey")
new_jersey.virus_effects # => New Jersey will lose 3545836 people in this outbreak and the virus will spread across the state in 0.5 months.

all_states_data = STATE_DATA.collect{|state, data| VirusPredictor.new(state)}  
all_states_data.each {|state| state.virus_effects } # => returns all states virus effects

