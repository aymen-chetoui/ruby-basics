require_relative 'pledge'

describe Pledge do
  before do
    @pledge = Pledge.new(:metal, 40) 
  end
  
  it 'has a name attribute' do
    @pledge.name.should == :metal
  end
  
  it 'has an amount attribute' do
    @pledge.amount.should == 40
  end
end

describe PledgePool do

  it 'has 3 pledges' do
    PledgePool::PLEDGES.size.should == 3
  end

  it 'has a bronze pledge' do
    PledgePool::PLEDGES[0].should == Pledge.new(:bronze, 50)
  end

  it 'has a silver pledge' do
    PledgePool::PLEDGES[1].should == Pledge.new(:silver, 75)
  end

  it 'has a gold pledge' do
    PledgePool::PLEDGES[2].should == Pledge.new(:gold, 100)
  end
  
end