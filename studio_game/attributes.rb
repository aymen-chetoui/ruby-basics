# 1

# class Player
#   attr_reader :health, :name
  
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
  
#   def to_s
#     "I'm #{@name} with a health of #{@health}."
#   end
# end

# player1 = Player.new('moe')
# puts player1.say_hello
# player2 = Player.new('larry', 60)
# puts player2.say_hello
# player3 = Player.new('curly', 125)
# puts player3.say_hello


# puts player1.health
# puts player2.health
# puts player3.health

# 2

# class Player
#   attr_accessor :name
#   attr_reader :health
  
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
  
#   def to_s
#     "I'm #{@name} with a health of #{@health}."
#   end
# end

# player1 = Player.new('moe')
# puts player1.say_hello
# player2 = Player.new('larry', 60)
# puts player2.say_hello
# player3 = Player.new('curly', 125)
# puts player3.say_hello
# player2.name = 'Lawrence'
# puts player2.name

# 3

class Player
  # attr_accessor :name
  attr_reader :health
  
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
  
  # score is a virtual attribute
  def score
    @name.length + @health
  end
  
  def name=(new_name)
    @name = new_name # add .capitalize to have capitalized name
  end

  def name
    @name 
  end
  
  def say_hello
    "I'm #{@name} with a health of #{@health}."
  end

  # calling a virtual att without @ sign = sefl.score (movie1.score)  
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
end

player1 = Player.new('moe')
puts player1
player2 = Player.new('larry', 60)
puts player2
player3 = Player.new('curly', 125)
puts player3

player2.name=('lawrence')
# same as player2.name = 'lawrence'
puts player2.name # not capitalized, because of no attr_writer, need to ass .capitalize in name= method


