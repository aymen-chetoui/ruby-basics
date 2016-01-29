# 1
name1 = "larry"
health1 = 60

puts name1.capitalize

puts "#{name1.capitalize} has a health of #{health1}."

# 2 

name2 = "larry"
health2 = 125
puts name2.upcase
puts "#{name2.upcase} has a health of #{health2}."

health2 = health1
puts "#{name2.upcase} has a health of #{health2}."

health1 = 30
puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."

# 3

name3 = "moe"
health3 = 100

puts "#{name3.capitalize} has a health of #{health3}.".center(50,'*')

# 4

name4 = "shemp"
health4 = 90

puts "#{name4.capitalize.ljust(20,'.')} #{health4} health"

# 5

# 123.reverse

123.to_s.reverse
123.to_s.reverse.to_i

# 6 

# In the following line of code, capitalize is a method called on the object named name and assigned to the variable named text.
# text = "#{name.capitalize} has a health of #{health}."
# In the case of the line of code below, center is a method that takes two parameters.
# puts text.center(50, '*')

# Bonus

current_time = Time.new
puts "The game started on #{current_time.strftime('%A %d/%m/%Y at %l:%M%p')}"
