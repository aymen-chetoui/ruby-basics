require_relative '../lib/crowdfund/school_project'

junior_project = CrowdFund::SchoolProject.new('juniors', 10, 100)
senior_project = CrowdFund::SchoolProject.new('seniors', 20, 500)

junior_project.gained
puts junior_project.need
senior_project.lost
