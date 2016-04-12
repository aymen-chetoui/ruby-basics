require_relative 'project'

class GrantProject < Project

  def initialize(name, fund, goal, charity_ratio=0.5)
    super(name, fund, goal)
    @charity_ratio = charity_ratio
  end
  
  def secured?
    #  project is secured when it has accumulated more thant half of its goal
    @fund > (goal / 2)
  end
  
  def lost
    puts "#{@name} is a Grant Poject : funds cannot be removed!"
  end

  def earn_pledge(pledge)
    if secured?
      puts "#{@name} is secured and gives #{@charity_ratio} of #{pledge.name} to charity."
      shared_amount = pledge.amount * @charity_ratio
      pledge = Pledge.new(pledge.name, shared_amount)
    end
    super(pledge)
  end

end