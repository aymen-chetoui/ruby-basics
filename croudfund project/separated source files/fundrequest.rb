require_relative 'project'
require_relative 'die'
require_relative 'funding_round'

class FundRequest
  def initialize(name)
    @name = name.upcase
    @projects = []  
  end
  
  def add_project(project)
    @projects << project
  end
  
  def request_funding(weeks)
    puts "The current projects are :"
    @projects.each do |project|
      puts project
    end
    1.upto(weeks) do |week|
    puts "\nFund raising week #{week}:"
      @projects.each do |project|
        FundingRound.take_fund(project)
        puts project      
      end
    end
  end
  
  def print_stats
    fully_funded_projects, under_funded_projects = @projects.partition { |project| project.funded? }
    puts "\nFully funded projects (funds):"
    fully_funded_projects.each { |project| print_project_and_fund(project) }
    puts "\nUnder funded projects (funds):"
    under_funded_projects.each { |project| print_project_and_fund(project) }
    puts "\nStill needing funds projects (needs):"
    under_funded_projects.sort.each { |project| puts "#{project.name.ljust(30, '_')}#{project.need}" }
  end
  
  def print_project_and_fund(project)
    puts "#{project.name.ljust(30, '_')}#{project.fund}"
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