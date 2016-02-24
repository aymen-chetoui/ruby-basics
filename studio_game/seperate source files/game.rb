require_relative 'player'
require_relative 'die'
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
      die = Die.new   
      number_rolled = die.roll
      
      if number_rolled < 3
        player.blam
      elsif number_rolled < 5
        puts "#{player.name} was skipped."
      else
        player.w00t
      end
      
      #player.blam
      #player.w00t
      #player.w00t
      puts player
    end
    
  end
end

if __FILE__ == $PROGRAM_NAME
  player1 = Player.new('player1')
  player2 = Player.new('player2', 70)
 
  mygame = Game.new('mygame')
  mygame.add_player(player1)
  mygame.add_player(player2)
  mygame.play
end