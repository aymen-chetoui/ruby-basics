require_relative 'project'

class FundRequest
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

if __FILE__ == $PROGRAM_NAME
  project1 = Project.new('myproject1', 500, 3000)
  project2 = Project.new('myproject1', 250, 750)

  myrequest = FundRequest.new('my fund equest')
  myrequest.add_project(project1)
  myrequest.add_project(project2)
  myrequest.request_funding
end