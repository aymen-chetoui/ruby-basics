require_relative 'fundrequest'

describe FundRequest do

  before do
    @fundrequest = FundRequest.new('contest')
    @fund = 50
    @goal = 100
    @project = Project.new('abc', @fund, @goal)
    @fundrequest.add_project(@project)
    $stdout = StringIO.new
  end
  
  it 'raises funds if an even number is rolled' do
    Die.any_instance.stub(:roll).and_return(2)
    @fundrequest.request_funding
    @project.fund.should == @fund + 25
  end
  
  it 'loses funds if an odd number is rolled' do
    Die.any_instance.stub(:roll).and_return(1)
    @fundrequest.request_funding
    @project.fund.should == @fund - 15
  end
  
end