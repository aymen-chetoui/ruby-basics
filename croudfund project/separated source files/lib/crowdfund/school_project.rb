require 'crowdfund/fundable'

module CrowdFund
    class SchoolProject

    include Fundable
    
    attr_accessor :name, :fund
    attr_reader :goal
    
    def initialize(name, fund=0, goal=100)
        @name = name
        @fund = fund
        @goal = goal
    end 

    end
end