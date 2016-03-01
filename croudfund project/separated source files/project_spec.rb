require_relative 'project'

describe Project do
  
  before do
    @initial_fund = 100
    @goal = 500
    @project = Project.new("abc", @initial_fund, @goal)
    $stdout = StringIO.new #changed gloabal variable stdout to a new one in this script, to avoit puts commands
  end
  
  it 'has an upcase name' do
    @project.name.should == 'ABC'  
  end
  
  it 'has an initial fund' do
    @project.fund.should == 100
  end

  it 'has a string representation' do
    @project.to_s.should == 'Project ABC has $100 in fundinfg towards a goal of $500 => still need $400'
  end

  it 'computes a score as the sum of its health and length of name' do
    @project.need.should == (500 - 100)
  end

  it 'increases fund by 25 when gained' do
    @project.gained
    @project.fund.should == @initial_fund + 25
  end

  it 'decreases fund by 15 when lost' do
    @project.lost
    @project.fund.should == @initial_fund - 15 
  end
  
  context 'has enough funds' do
    before do
      @project = Project.new('abc', 100, 100)
    end
    
    it 'is funded' do
      @project.should be_funded
    end
  end
  
  context 'has not enough funds' do
    before do
      @project = Project.new('abc', 50, 100)
    end
    
    it 'is not funded' do
      @project.should_not be_funded
    end
  end
  
  it "calculate the amount of pledges" do
    @project.rewards.should == 0
    @project.earn_pledge(Pledge.new(:bronze, 50))
    @project.rewards.should == 50
    @project.earn_pledge(Pledge.new(:silver, 75))
    @project.rewards.should == 125
    @project.earn_pledge(Pledge.new(:gold, 100))
    @project.rewards.should == 225
  end
  
  it "yields each earned pledge and its total amount" do
    @project.earn_pledge(Pledge.new(:bronze, 50))
    @project.earn_pledge(Pledge.new(:bronze, 50))
    @project.earn_pledge(Pledge.new(:bronze, 50))
    @project.earn_pledge(Pledge.new(:silver, 75))
    @project.earn_pledge(Pledge.new(:gold, 100))
    @project.earn_pledge(Pledge.new(:gold, 100))
    @project.earn_pledge(Pledge.new(:gold, 100))
    @project.earn_pledge(Pledge.new(:gold, 100))
    
    
    yielded = []
    @project.each_earned_pledge do |pledge|
      yielded << pledge
    end
    
    
    yielded.should == [
      Pledge.new(:bronze, 150),
      Pledge.new(:silver, 75),
      Pledge.new(:gold, 400)
    ]
  end

end