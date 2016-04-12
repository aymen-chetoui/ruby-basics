require_relative 'pledge'
require_relative 'fundable'

class Project
  include Fundable
  
  attr_accessor :name, :fund
  attr_reader :goal
  
  def initialize(name, fund, goal)
    @name = name.upcase
    @fund = fund
    @goal = goal
    @earned_pledges = Hash.new(0)
  end 

  def earn_pledge(pledge)
    @earned_pledges[pledge.name] += pledge.amount
    @fund += pledge.amount
    puts "#{@name} earned a #{pledge.name} pledge worth $#{pledge.amount}"
    puts "#{@name}'s pledges: #{@earned_pledges}"
  end
  
  def each_earned_pledge
    @earned_pledges.each do |name, amount|
      yield Pledge.new(name, amount)
    end
  end

  def rewards 
    @earned_pledges.values.reduce(0, :+)
  end

# Moved to fundable
#   def gained
#     @fund += 25
#     puts "Project #{@name} got more funds!"
#   end 
#   def lost
#     @fund -= 15
#     puts "Project #{@name} lost some funds!"
#   end
#   def need
#     @goal - @fund
#   end
#   def funded?
#     @fund >= @goal
#   end
#   def <=>(other_project)
#     other_project.need <=> need
#   end
    
  def to_s
    "Project #{@name} has $#{@fund} in fundinfg towards a goal of $#{@goal} => still need $#{need}"
  end
  

end


if __FILE__ == $PROGRAM_NAME
  project1 = Project.new('project1', 100, 500)
  puts project1
  project1.gained
  project1.lost
  puts project1
end