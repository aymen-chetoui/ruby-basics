class Project
  def initialize(name, fund, goal)
    @name = name
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
  
  def to_s
    "Project #{@name} has $#{@fund} in fundinfg towards a goal of $#{@goal}."
  end
end

project1 = Project.new('LMN', 500, 3000)
puts project1
project2 = Project.new('XYZ', 25, 75)
puts project2
project1.lost
project2.gained
puts project1
puts project2