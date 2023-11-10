# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.
# Prompt: Create a Ruby function that takes in an array containing votes of different types of tacos, and return the final vote count for each type of taco.

# Add comments to each line to explain the code.

# an array of votes for different types of tacos
taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# totals variable for the total vote count
# .reduce is used to iterate over the array
# Hash.new makes a new hash with default value of 0
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  # .downcase to ensure all strings in the array are accounted for
  # += 1 to increment through each index in the array
  result[vote.downcase] += 1
  # implicit return of the above method on the hash
  result
end
# print the final vote count
p totals