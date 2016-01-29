# 1

# class Player
# end

# player1 = Player.new

# 2

# class Player
#   def initialize(name, health = 100)
#     @name = name.capitalize
#     @health = health
#   end
# end

# player1 = Player.new('moe')
# puts player1.inspect

# 3,4

# class Player
#   def initialize(name, health = 100)
#     @name = name.capitalize
#     @health = health
#   end
  
#   def blam
#     @health -= 10
#     puts "#{@name} <<< BLAMMED (-10)"
#   end
  
#   def w00t
#     @health += 15
#     puts "#{@name} +++ W00TED +++ (+15)"
#   end
  
#   def say_hello
#     "I'm #{@name} with a health of #{@health}."
#   end
# end

# player1 = Player.new('moe')
# puts player1.inspect
# puts player1.say_hello

# player2 = Player.new('larry', 60)
# puts player2.say_hello
# player3 = Player.new('curly', 125)
# puts player3.say_hello
# player3.blam
# puts player3.say_hello
# player3.w00t
# puts player3.say_hello
# player2.w00t
# player2.w00t
# player2.w00t
# puts player2.say_hello

# 5
class Player
  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end
  
  def blam
    @health -= 10
    puts "#{@name} <<< BLAMMED (-10)"
  end
  
  def w00t
    @health += 15
    puts "#{@name} +++ W00TED +++ (+15)"
  end
  
  def say_hello
    "I'm #{@name} with a health of #{@health}."
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health}."
  end
end

player1 = Player.new('moe')
puts player1

# 6

# A class is a factory (blueprint) that instantiates objects.
# Objects have unique state and a common set of methods / behaviors.
# An instance variable exists for the life of an object.
# Instance methods have access to their object's instance variables.
# Class names start with an upcase letter.
# Method names start with a lowcase letter.
# Variable names start with a lowcase letter.
# Instances variables start with an @.