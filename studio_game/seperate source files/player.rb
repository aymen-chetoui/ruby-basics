class Player
  attr_accessor :name
  attr_reader :health
  
  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end
  
  def found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points"
    puts "#{@name}'s treasures: #{@found_treasures}"
  end
  
  def points 
    @found_treasures.values.reduce(0, :+)
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
    #@name.length + @health
    @health + points
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
    "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}."
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