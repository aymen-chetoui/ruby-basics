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
    
    it 'is ok' do
      @project.should be_ok
    end
  end
  
  context 'has not enough funds' do
    before do
      @project = Project.new('abc', 50, 100)
    end
    
    it 'is not ok' do
      @project.should_not be_ok
    end
  end

end