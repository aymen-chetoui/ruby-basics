require_relative '../lib/crowdfund/project'
require_relative '../lib/crowdfund/fundrequest'
require_relative '../lib/crowdfund/grant_project'

# project1 = Project.new('LMN', 500, 3000)
# project2 = Project.new('XYZ', 25, 75)
# project3 = Project.new('FGH', 300, 700)
# project4 = Project.new('MNO', 200, 1100)

holding = CrowdFund::FundRequest.new('VC-Friendly Start-up Projects')

# holding.add_project(project1)
# holding.add_project(project2)
# holding.add_project(project3)
# holding.add_project(project4)
# holding.request_funding(100) do
#   holding.total_rewards >= 10000 # the only returned value => will be yielded to the method request funding
# end
# holding.print_stats

# holding.load_project(ARGV.shift || 'projects.csv')

default_player_file = File.join(File.dirname(__FILE__), 'projects.csv')
holding.load_project(ARGV.shift || default_player_file)

grant_pr = CrowdFund::GrantProject.new('grt', 700, 4000, 0.6)
holding.add_project(grant_pr)

loop do
  puts "\nHow many croudfund weeks? (type 'quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    holding.request_funding(Integer(answer))
  when 'quit', 'exit'
    holding.print_stats
    break
  else
    puts "Please enter a valid number or 'quit'"
  end    
end

holding.save_fund_stats('Croudfund stats.txt')