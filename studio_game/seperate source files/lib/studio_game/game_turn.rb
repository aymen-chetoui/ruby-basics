require 'studio_game/player'
require 'studio_game/die'
require 'studio_game/treasure_trove'
# require_relative 'loaded_die'

module StudioGame
    module GameTurn

    def self.take_turn(player)
        # Change Die with LoadedDie : rigged die
        # die = LoadedDie.new   
    die = Die.new 
        number_rolled = die.roll
        if number_rolled < 3
        player.blam
        elsif number_rolled < 5
        puts "#{player.name} was skipped."
        else
        player.w00t
        end
        treasure_found = TreasureTrove.random
        player.found_treasure(treasure_found)
        #puts "#{player.name} founds a #{treasure_found.name} worth #{treasure_found.points}"
    end
    
    end
end    