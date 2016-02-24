module FundingRound

  def self.take_fund(project)
    die = Die.new   
    number_rolled = die.roll
      
    if number_rolled.even?
      project.gained
    else
      project.lost
    end
  end
end
