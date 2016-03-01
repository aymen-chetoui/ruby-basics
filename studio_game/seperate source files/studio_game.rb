require_relative 'player'
require_relative 'game'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
player4 = Player.new("jack",110)
player5 = Player.new("dave", 65)
player6 = Player.new("eddy", 70)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.add_player(player4)
knuckleheads.add_player(player5)
knuckleheads.add_player(player6)
knuckleheads.play(100) do
  knuckleheads.total_points >= 2000
end
knuckleheads.print_stats