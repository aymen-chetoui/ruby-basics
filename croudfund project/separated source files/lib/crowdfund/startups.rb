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

    class Community
    def initialize(name)
        @name = name.upcase
        @projects = []  
    end
    
    def add_project(project)
        @projects << project
    end
    
    def request_funding
        puts "The current projects are :"
        @projects.each do |project|
        puts project
        end
        @projects.each do |project|
        project.lost
        project.gained
        puts project
        end
        
    end
    end
end
project1 = Project.new('LMN', 500, 3000)
project2 = Project.new('XYZ', 25, 75)
project3 = Project.new('FGH', 300, 700)
project4 = Project.new('MNO', 200, 1100)

holding = Community.new('VC-Friendly Start-up Projects')
holding.add_project(project1)
holding.add_project(project2)
holding.add_project(project3)
holding.add_project(project4)
holding.request_funding
