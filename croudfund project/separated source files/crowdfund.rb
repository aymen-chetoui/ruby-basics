require_relative 'project'
require_relative 'fundrequest'

project1 = Project.new('LMN', 500, 3000)
project2 = Project.new('XYZ', 25, 75)
project3 = Project.new('FGH', 300, 700)
project4 = Project.new('MNO', 200, 1100)

holding = FundRequest.new('VC-Friendly Start-up Projects')
holding.add_project(project1)
holding.add_project(project2)
holding.add_project(project3)
holding.add_project(project4)
holding.request_funding