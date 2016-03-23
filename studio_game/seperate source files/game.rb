require_relative 'player'
#require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'
require 'csv'

class Game
  attr_reader :title
  def initialize(title)
    @title = title.capitalize
    @players = []
  end
  
  def add_player(player)
    @players << player
  end
  
  def high_score_entry(player)
    formatted_name = player.name.ljust(30, '.')
    "#{formatted_name}#{player.score}"
  end
  
  def load_players(from_file)
    # File.readlines(from_file).each do |line|
    #   #name, health = line.split(',')
    #   #player = Player.new(name, Integer(health))
    #   #add_player(player)
    #   add_player(Player.from_csv(line))
    # end
    
    # Using the CSV library
    CSV.foreach(from_file) do |line|
      player = Player.new(line[0], Integer(line[1]))
      add_player(player)
    end
  end
  
  def save_high_scores(to_file='high_scores.txt')
    File.open(to_file, 'w') do |file|
      file.puts "#{@title} High Scores :"
      @players.sort.each do |player|
        # file.puts "#{player.name.ljust(30, '.')}#{player.score}"
        file.puts high_score_entry(player)
      end
    end
  end
  
  def total_points
    @players.reduce(0) { |sum, player| sum + player.points }
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
      if block_given?
        break if yield
      end
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
    @players.sort.each { |player| puts high_score_entry(player) }
    
    puts "\nThe players have collected a total of #{total_points} points from treasures"
    @players.each do |player|
      puts "\n#{player.name}'s point totals:"
      
      player.each_found_treasure do |treasure|
        puts "#{treasure.points} total #{treasure.name} points"
      end
      
      
      puts "#{player.points} grand total points"
    end
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