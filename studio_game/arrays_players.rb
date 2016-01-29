# 1

class Player
  attr_accessor :name
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
  
  def score
    @name.length + @health
  end
  
  def name=(new_name)
    @name = new_name
  end

  def name
    @name 
  end
  
  def say_hello
    "I'm #{@name} with a health of #{@health}."
  end
 
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
end

player1 = Player.new('moe')
player2 = Player.new('larry', 60)
player3 = Player.new('curly', 125)

players = [player1, player2, player3]
puts "There are #{players.size} players in the game:"

# || are "goal posts".
players.each do |player|
  puts player
end

# 2
players.each do |player|
  puts player.health
end

# || are "goal posts".
# players.each do |player|
#   player.w00t
#   player.blam
#   player.blam
#   player.w00t
#   puts player
# end

players.pop
players << Player.new('shemp',90)

players.each do |player|
  puts player
end

puts players.join(' **** ')

puts players[2].score 
