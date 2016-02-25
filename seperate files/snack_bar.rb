# class Snack
#   attr_reader :name, :carbs

#   def initialize(name, carbs)
#     @name = name
#     @carbs = carbs
#   end
# end

# Struct initiate a class with its accessors, 
Snack = Struct.new(:name, :carbs)

# the objects within this class can be modified 
# tasty_snack = Snack.new(:nachos, 40)
# tasty_snack.name = :totopos
# tasty_snack.carbs = 30

# popcorn = Snack.new('popcorn', 20)
# puts popcorn.name
# puts popcorn.carbs

# candy = Snack.new('candy', 15)
# puts candy.name
# puts candy.carbs

module SnackBar

  # Name in upcase means it is a constant in ruby
  SNACK = [ 
      Snack.new(:popcorn, 20),
      Snack.new(:candy, 15),
      Snack.new(:nachos, 40),
      Snack.new(:pretzel, 10),
      Snack.new(:soda, 5)
      ]
      
  def self.random
    SNACK.sample # sample in ruby applied to arrays will return a random object 
  end
end


if __FILE__ == $0
  # to get access the constant inside the module we use ::
  puts SnackBar::SNACK
  snack = SnackBar.random
  puts "Enjoy your #{snack.name} (#{snack.carbs} carbs)"
end