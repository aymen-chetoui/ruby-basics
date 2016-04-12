require_relative 'berserk_player'

describe BerserkPlayer do
  
  before do
    @initial_health = 50 
    @player = BerserkPlayer.new("berserker", @initial_health)
  end
  
  it "does not go berserk when w00ted up to 5 times" do
    1.upto(5) { @player.w00t }
    
    @player.berserk?.should be_false
    
    # or if using Rspec 3.0:
    # @player.berserk?.should be_falsey
  end
  
  it "goes berserk when w00ted more than 5 times" do
    1.upto(6) { @player.w00t }
    
    @player.berserk?.should be_true

    # or if using Rspec 3.0:
    # @player.berserk?.should be_truthy
  end
  
  it "gets w00ted instead of blammed when it's gone berserk" do  
    1.upto(6) { @player.w00t }
    1.upto(2) { @player.blam }
    
    @player.health.should == @initial_health + (8 * 15)
  end
  
  context "with a boost factor" do
    before do
      @initial_health = 100
      @boost_factor = 5  
      @player = ClumsyPlayer.new("klutz", @initial_health, @boost_factor)
    end
  
    it "has a boost factor" do
      @player.boost_factor.should == 5
    end

    it "gets boost factor number of w00ts when w00ted" do
      @player.w00t

      @player.health.should == @initial_health + (15 * @boost_factor)
    end
  end

end