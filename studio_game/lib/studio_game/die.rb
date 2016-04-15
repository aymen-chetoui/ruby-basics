require 'studio_game/auditable'

module StudioGame
    class Die
    include Auditable
    
    attr_reader :number
    
    #   def initialize
    #     roll
    #   end

    def roll
        @number = rand(1..6)
        audit # this will call the method from the module auditab
        return @number
    end
    end
end    