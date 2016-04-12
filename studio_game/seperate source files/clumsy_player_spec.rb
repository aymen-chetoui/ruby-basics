require_relative 'clumsy_player'

describe ClumsyPlayer do

  before do
    @player = ClumsyPlayer.new("klutz")
  end

  it 'gets half of the treasures value' do
    
    @player.points.should == 0
    
    hammer = Treasure.new(:hammer, 50)
    @player.found_treasure(hammer)
    @player.found_treasure(hammer)
    @player.found_treasure(hammer)
    
    @player.points.should == 75
  
    crowbar = Treasure.new(:crowbar, 400)
    
    @player.found_treasure(crowbar)
    
    @player.points.should == 275
    
    treasures_found = []
    
    @player.each_found_treasure do |treasure|
      treasures_found << treasure
    end
    
    treasures_found.should == [Treasure.new(:hammer, 75), Treasure.new(:crowbar, 200)]
    
  end
end