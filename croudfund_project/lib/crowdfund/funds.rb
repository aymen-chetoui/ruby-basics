module CrowdFund
    class Project
    attr_accessor :name
    attr_reader :fund, :goal
    
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

    def need
        @goal - @fund
    end
    
    def to_s
        "Project #{@name} has $#{@fund} in fundinfg towards a goal of $#{@goal} => still need $#{need}"
    end
    end

end
project1 = Project.new('LMN', 500, 3000)
project2 = Project.new('XYZ', 25, 75)
# project1.lost
# project2.gained
# puts project1
# puts project2

# project1.name = 'the new LMN'
# puts project1.name
# puts project1.fund
# puts project1.goal
# puts project1.need

# Arrays
project3 = Project.new('FGH', 300, 700)
project4 = Project.new('MNO', 200, 1100)

projects = [project1, project2, project3]

projects.each do |project|
  puts "#{project.name.ljust(20,'.')}>#{project.goal}"
end

projects.pop
projects.push(project4)

projects.each do |project|
  puts project
end

projects.each do |project|
  project.lost
  project.lost
  project.gained
  puts project
end