class Player
  def initialize(name, health)
    @name = name.capitalize
    @health = health
  end
  
  def up
    @health +=13
    puts "UP ! #{@name}^^^13"
  end
  
  def down
    @health -= 17
    puts "BAM ! #{@name}~~~17"
  end
  
  def to_s
    "#{@name.ljust(20,'*')}>health: #{@health}"
  end  
end

class Game
  def initialize(name)
    @name = name.upcase
    @players = []
  end
  
  def add_player(player)
    @players << player  
  end
  
  def play
    puts "Player playing #{@name}:"
    @players.each do |player|
      puts player
    end
    
    @players.each do |player|
      player.up
      player.down
      player.down
      puts player
    end
  end
end

player1 = Player.new('johan', 70)
player2 = Player.new('Mike', 90)

pistols = Game.new('pistols')
pistols.add_player(player1)
pistols.add_player(player2)
pistols.play
