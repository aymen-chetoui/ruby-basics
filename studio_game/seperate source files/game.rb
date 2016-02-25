require_relative 'player'
#require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  attr_reader :title
  def initialize(title)
    @title = title.capitalize
    @players = []
  end
  
  def add_player(player)
    @players << player
  end
  
  def play(rounds)
    puts "There are #{@players.size} in #{@title} :"
    @players.each do |player|
      puts player
     end
    
    treasures = TreasureTrove::TREASURES
    puts "\nThere are #{treasures.size} treasures :"
    treasures.each { |treasure| puts "#{treasure.name} worths #{treasure.points} points"}
    
    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end
  
  def print_stats
    strong_players, wimpy_players = @players.partition { |player| player.strong?}
    puts "\n#{@title} Statistics:"
    puts "\n#{strong_players.length} Strong Players:"
    # puts strong_players
    strong_players.each {|player| print_name_and_health(player)}
    puts "\n#{wimpy_players.length} Wimpy Players:"
    # puts wimpy_players
    wimpy_players.each {|player| print_name_and_health(player)}
    # sorted_players = @players.sort { |a, b| b.score <=> a.score }
    puts "\n#{@title} Top Scores:"
    #sorted_players.each { |player| puts "#{player.name.ljust(30, '.')}#{player.score}" }
    @players.sort.each { |player| puts "#{player.name.ljust(30, '.')}#{player.score}" }    
  end
  
  def print_name_and_health(player)
    puts "#{player.name.ljust(30, '.')}#{player.health}"
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