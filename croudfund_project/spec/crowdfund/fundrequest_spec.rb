require 'crowdfund/fundrequest'
require 'crowdfund/pledge'

module CrowdFund

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
        @fundrequest.request_funding(3)
        @project.fund.should == @fund + @project.rewards + ( 25 * 3 )
    end
    
    it 'loses funds if an odd number is rolled' do
        Die.any_instance.stub(:roll).and_return(1)
        @fundrequest.request_funding(3)
        @project.fund.should == @fund + @project.rewards - (15 * 3)
    end
    
    context 'calculate total rewards' do
    
        before do
        @contest = FundRequest.new('competition')
        end
    
        it 'initial total rewards is zero' do
        @contest.total_rewards.should == 0
        end
    
        it 'calculates to total amount of pledges' do
        @project1 = Project.new('abc', 100, 1000)
        @project2 = Project.new('def', 200, 1500)
        @project1.earn_pledge(Pledge.new(:gold, 100))
        @project1.earn_pledge(Pledge.new(:bronze, 25))
        @contest.add_project(@project1)
        @contest.add_project(@project2)
        
        @contest.total_rewards.should == 125
        end
    end
    end
end