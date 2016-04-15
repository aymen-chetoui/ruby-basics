# def once
#   puts "Before yield"
#   yield ## Will be replace by the block {} below when calling once
#   puts "After yield"
# end

# once { puts "Running your block" }

# # Before yield
# # Running your block
# # After yield

# def twice
#   puts "Before yield"
#   yield
#   yield
#   puts "After yield"
# end

# twice {puts "Running your block"}
# # Before yield
# # Running your block
# # Running your block
# # After yield


# yield with parameters
# def three_times
#   puts 'Ready'
#   yield(1) # returns the first iteration of three_times {} below
#   puts 'Set'
#   yield 2 # () are optional in Ruby
#   puts 'Go!'
#   yield(3) # returns the third iteration of three_times {} below
# end

# three_times { |number| puts number }

# def compute
#   puts yield
# end

# compute do
#   'Hello'
#   7
#   3.14 # This once will be printed because it is the last statement and will be returned from this block
# end



# def compute
#   puts yield
# end

# compute # this will cause an error because compute is not a block here and returns nothing to yield #to get around this we can do


# def compute
#   if block_given? # this is a build in Ruby method
#     puts yield
#   else
#     puts 'does not compute'
#   end
# end

# compute
# compute { 3.14 }

numbers = (1..10).to_a
#puts numbers.select { |n| n.even? }

def my_select(array)
  results = []
  array.each do |element|
    results << element if yield(element)
  end
  results
end

puts my_select(numbers) { |n| n.even? }