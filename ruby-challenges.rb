# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:
# input: hash of nested arrays
# output: one array of all hash values alphabetical and at own index 
# create method to get all values from the hash
# .flatten to unnest and put in single array
# .sort to sort flattened array alphabetically
# return sorted + flattened array
# print method with given test var 

def state_flattened hash 
  flattened_array = hash.values.flatten
  sorted_array = flattened_array.sort 
  return sorted_array
end
p state_flattened us_states 
# --> ["Arizona", "California", "Idaho", "Maine", "Nevada", "New Hampshire", "Oregon", "Rhode Island", "Washington"] 

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code: 
# input: a Bike class initialized with a model, wheels, and current_speed
# output: bike object from Bike class that can display bike info
# create a Bike class
# add given attributes 
# initialize w given instances
# create method named bike_info
# use string interpol to return bike info if called upon an object created from Bike

# class Bike 
#   attr_reader :model, :wheels, :current_speed
#   def initialize(model, wheels = 2)
#     @model = model 
#     @wheels = wheels
#     @current_speed = 0 
#   end
  
#   def bike_info 
#     "The #{@model} bike has #{wheels} wheels and is going #{current_speed}."
#   end
# end

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
# input: a Bike class initialized with a model, wheels, and current_speed
# output: bike object from Bike class that can display bike info
# create a Bike class
# add given attributes 
# initialize w given instances
# create method named bike_info
# use string interpol to return bike info if called upon an object created from Bike
# create method for speed increase
  # add a paramter so you can pass in an integer when printed
  # increase current speed by input of speed_up value
# create method for braking, slowing down
  # add a parameter so you can pass in an integer when printed
  # decrease current speed by input of slowing down value
# .max to make sure decreased speed can only limit to default of current speed(0), can not go in negative



class Bike 
  attr_reader :model, :wheels, :current_speed
  def initialize(model, wheels = 2)
    @model = model 
    @wheels = wheels
    @current_speed = 0 
  end
  
  def bike_info 
    "The #{@model} bike has #{wheels} wheels and is going #{current_speed} mph."
  end
  def pedal_faster(speed_up)
    @current_speed += speed_up
  end

  def brake (slow_down)
    @current_speed -= slow_down 
    @current_speed = [0, @current_speed].max
  end
end