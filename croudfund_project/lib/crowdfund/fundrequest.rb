require 'crowdfund/project'
require 'crowdfund/die'
require 'crowdfund/funding_round'
require 'crowdfund/pledge'
require 'csv'

module CrowdFund

    class FundRequest
    def initialize(name)
        @name = name.upcase
        @projects = []  
    end
    
    def add_project(project)
        @projects << project
    end
    
    def load_project(from_file)
        CSV.foreach(from_file) do |line|
        project = Project.new(line[0], Integer(line[1]), Integer(line[2]))
        add_project(project)
        end
    end
    
    def save_fund_stats(to_file='fund_stats.txt')
        File.open(to_file, 'w') do |file|
        file.puts "#{@name} Croudfund Stats :"
        @projects.sort.each do |project|
            file.puts project_and_fund(project)
        end
        end
    end
    
    def total_rewards
        @projects.reduce(0) { |sum, project| sum + project.rewards }
    end
    
    def request_funding(weeks)
        puts "The current projects are :"
        @projects.each do |project|
        puts project
        end
        pledges = PledgePool::PLEDGES
        puts "\nThere are #{pledges.size} possible pledge amounts:"
        pledges.each { |pledge| puts "A #{pledge.name} pledge is worth $#{pledge.amount}"}
        1.upto(weeks) do |week|
        
        if block_given?
        break if yield
        end
        
        puts "\nFund raising week #{week}:"
        @projects.each do |project|
            FundingRound.take_fund(project)
            puts project      
        end
        end
    end
    
    def print_stats
        fully_funded_projects, under_funded_projects = @projects.partition { |project| project.funded? }
        puts "\nFully funded projects (funds):"
        fully_funded_projects.each { |project| puts project_and_fund(project) }
        puts "\nUnder funded projects (funds):"
        under_funded_projects.each { |project| puts project_and_fund(project) }
        puts "\nStill needing funds projects (needs):"
        under_funded_projects.sort.each { |project| puts "#{project.name.ljust(30, '_')}#{project.need}" }
        
        puts "\nThe projects have collected a total amouts of $#{total_rewards} from pledges:"
    
        @projects.each do |project|
        puts "\n#{project.name}'s total rewards:"
        project.each_earned_pledge do |pledge|
            puts "$#{pledge.amount} total #{pledge.name} amount"
        end
        puts "$#{project.rewards} grand total pledges"
        end 
    
    end
    
    def project_and_fund(project)
        "#{project.name.ljust(30, '_')}#{project.fund}"
    end
    end

    if __FILE__ == $PROGRAM_NAME
    project1 = Project.new('myproject1', 500, 3000)
    project2 = Project.new('myproject1', 250, 750)

    myrequest = FundRequest.new('my fund equest')
    myrequest.add_project(project1)
    myrequest.add_project(project2)
    myrequest.request_funding
    end   
end