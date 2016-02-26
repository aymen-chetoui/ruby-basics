snack_carbs = {:candy => 15, :pretzel => 10, :soda => 5}
puts snack_carbs[:candy]

# in ruby 9.1
new_snack_carbs = {candy: 30, pretzel: 10, soda: 5}
puts new_snack_carbs[:pretzel]

# Create empty hash
snack_carbs = {}
# or
snack_carbs = Hash.new

# assign a value to the key candy
snack_carbs[:candy] = 15

snack_carbs = {:candy => 15, :pretzel => 10, :soda => 5}
# Return all the keys # return an array
snack_carbs.keys
# Return all the values # return an arrays
puts snack_carbs.values

# Iteration on hashes # below name iterate on keys, carbs iterate on values
snack_carbs.each do |name, carbs|
  puts "#{name} has #{carbs} carbs"
end

# Accumulate in a hash
snack_carbs[:candy] = 15
snack_carbs[:candy] += 15
# now snack_carbs[:candy] has 30
# but if snack_carbs doesnt have key coke
#snack_carbs[:coke] # has nil in it 
# we cant iterate unless it has initial value
#snack_carbs[:coke] += 30 # return error

# specify default value in a hash (to avoid the nil scenario)
snack_carbs = Hash.new(0)
puts snack_carbs[:coke]
snack_carbs[:coke] += 30
puts snack_carbs[:coke]


carbs [10, 20, 30]
carbs.reduce { |sum, n| sum + n }
carbs.reduce(:+)
# if the carbs array is empty
carbs.reduce(0, :+)