require_relative 'pledge'
require_relative 'die'
require_relative 'project'

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
  puts "Project #{project.name} recieve a #{pledge_recieved.name} pledge worth $#{pledge_recieved.amount}"
  
  end
end
