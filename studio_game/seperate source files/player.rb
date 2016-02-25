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
  
  def strong?
    @health > 100
  end
  
  def <=>(other_player)
    other_player.score <=> score
  end
  
end

# We can replace $PROGRAM_NAME with $0

if __FILE__ == $PROGRAM_NAME
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end