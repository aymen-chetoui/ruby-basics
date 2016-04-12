module Playable
  
  def blam
    @health -= 10
    # puts "#{@name} <<< BLAMMED (-10)" # it is better to use self.name. And self is not required here, it is implicit 
    # because we are just reading the value of name and not modifying it here
    # if we want to modify it and it is without self, ruby will consider it as a local variable in Playable
    puts "#{name} <<< BLAMMED (-10)"
  end 
  
  def w00t
    # @health += 15
    self.health += 15 # here we need self, because we are modifying health, if we leave it just health, ruby will consider it as a local variable in Playable and wont be modified in player
    # puts "#{@name} +++ W00TED +++ (+15)"
    puts "#{name} +++ W00TED +++ (+15)"
  end
  
  def strong?
    # @health > 100
    health > 100 # here we dont need self because we are not modifying health
  end
  
end 