require 'crowdfund/pledge'
require 'crowdfund/die'
require 'crowdfund/project'

module CrowdFund

    module FundingRound

    def self.take_fund(project)
        die = Die.new   
        number_rolled = die.roll
        
        if number_rolled.even?
        project.gained
        else
        project.lost
        end
    
    pledge_recieved = PledgePool.random
    project.earn_pledge(pledge_recieved)
    #puts "Project #{project.name} recieve a #{pledge_recieved.name} pledge worth $#{pledge_recieved.amount}"
    
    end
    end
end