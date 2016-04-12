require_relative 'player'
require_relative 'game'
require_relative 'clumsy_player'
require_relative 'berserk_player'

# player1 = Player.new("moe")
# player2 = Player.new("larry", 60)
# player3 = Player.new("curly", 125)
# player4 = Player.new("jack",110)
# player5 = Player.new("dave", 65)
# player6 = Player.new("eddy", 70)

knuckleheads = Game.new("Knuckleheads")

# knuckleheads.add_player(player1)
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player3)
# knuckleheads.add_player(player4)
# knuckleheads.add_player(player5)
# knuckleheads.add_player(player6)
# knuckleheads.play(100) do
#   knuckleheads.total_points >= 2000
# end

# knuckleheads.print_stats

knuckleheads.load_players(ARGV.shift || 'players.csv')

klutz = ClumsyPlayer.new("klutz", 105)
knuckleheads.add_player(klutz)

berserker = BerserkPlayer.new("berserker", 50)
knuckleheads.add_player(berserker)

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when 'quit', 'exit'
    knuckleheads.print_stats
    break
  else
    puts "Please enter a valid number or 'quit'"
  end
end

knuckleheads.save_high_scores('high_score_file.txt')
