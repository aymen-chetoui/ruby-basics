class Calculator
  def initialize(value, delta)
    @value = value
    @delta = delta
  end 
  
  def add
    @value += @delta
  end
  
  def subtract
    @value -= ( 2 * @delta ) 
  end
end

calc = Calculator.new(20, 11)
puts calc.add
puts calc.subtract