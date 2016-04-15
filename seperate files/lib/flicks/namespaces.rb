module MovieSystem

  VERSION = 1.0
  
  def self.info
    puts "Movie system version #{VERSION}"
  end
  
  class Player
  end
end

module GameSystem

  VERSION = 2.0
  
  def self.info
    puts "Game system version #{VERSION}"
  end
    
  class Player
  end

end

puts MovieSystem::VERSION
puts MovieSystem.info
puts MovieSystem::Player.new # We can use the same name for class Player using MovieSystem module and GameSystem module

puts GameSystem::VERSION
puts GameSystem.info
puts GameSystem::Player.new