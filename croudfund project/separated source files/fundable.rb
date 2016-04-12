module Fundable
  
  def gained
    self.fund += 25
    puts "Project #{name} got more funds!"
  end 
  
  def lost
    self.fund -= 15
    puts "Project #{name} lost some funds!"
  end
  
  def need
    goal - fund
  end
  
  def funded?
    fund >= goal
  end
  
  def <=>(other)
    other.need <=> need
  end

end