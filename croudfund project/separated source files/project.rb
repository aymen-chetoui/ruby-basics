class Project
  attr_accessor :name
  attr_reader :fund, :goal
  
  def initialize(name, fund, goal)
    @name = name.upcase
    @fund = fund
    @goal = goal
  end 
  
  def gained
    @fund += 25
    puts "Project #{@name} got more funds!"
  end
  
  def lost
    @fund -= 15
    puts "Project #{@name} lost some funds!"
  end

  def need
    @goal - @fund
  end
  
  def ok?
    @fund >= @goal
  end
  
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