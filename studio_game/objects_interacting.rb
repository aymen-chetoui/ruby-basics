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

class Game
  attr_reader :title
  def initialize(title)
    @title = title.capitalize
    @players = []
  end
  
  def add_player(player)
    @players << player
  end
  def play
    puts "There are #{@players.size} in #{@title} :"
    @players.each do |player|
      puts player
     end
     
    @players.each do |player|
      player.blam
      player.w00t
      player.w00t
      puts player
    end
    
  end
end

player1 = Player.new('moe')
player2 = Player.new('larry', 60)
player3 = Player.new('curly', 125)

knuckleheads = Game.new('Knuckleheads')
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

# bonus round

player4 = Player.new('alvin', 115)
player5 = Player.new('simon', 50)

Chipmunks = Game.new('Chipmunks')
Chipmunks.add_player(player4)
Chipmunks.add_player(player5)
Chipmunks.add_player(player3)
Chipmunks.play
