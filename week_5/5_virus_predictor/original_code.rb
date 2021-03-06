# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
## Class VirusPredictor takes 5 parameters. They are called in driver codes, and
# passed values in hash.  The output is the number of people that will die from 
#an outbreak.

# Explaining require_relative
#  requires that a ruby file called state_data' exists. This allows the 
# code to access that file

# Explaining state_data file
# The file state_data has one object in it.  The object is a hash that is written in literal 
# notation.  It gives key and value pairs for the state/population information. 
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin # this method will initialize all instance variables and pass through 
    @population = population # all arguments that will be used throughout class VirusPredictor
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # this method defines the effects of the virus in terms of predicted deaths and how quickly it will spread using population density. 
  def virus_effects  #HINT: What is the SCOPE of instance variables? # These instance variables can be used anywhere in this class. 
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this? all methods that follow will be made private: not accessible for outside objects.
  #what happens if it were cut and pasted above the virus_effects method -that method would become private
  # the methods below it would not be able to be invoked outside of this class. 

  #this method determines how many deaths will be predicted if a virus outbreaks.  This method first determines the 
  #the size of the population density and then determines the magnitude of the damage that will be caused depending on density. 
  # we use the floor method in this variable which returns the largest integer equal to the float. 
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

  def speed_of_spread(population_density, state) #defining speed of spread using population density and state 
    #Measuring pop density and how quickly a virus would spread in months 
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

## This is a new method that allows us to iterate over each state
STATE_DATA.each do |state, information|
  VirusPredictor.new(state, information[:population_density], information[:population], information[:region], information[:regional_spread]).virus_effects
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects 

#Reflection
#This was a great exercise.  I paired with Puru on half of the exercise and created the method on my own 
#we used this exercise to talk about how the methods were all set up and learn a bit about private methods. 
#the method that I created allowed me to interate through the state data information and iterate through each state. 


,