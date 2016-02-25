3.times { puts "Echo" } # single line block

# multiple line block srrounded by do .. end
# 10.times do
#   puts 'situp'
#   puts 'pushup'
#   puts 'chinup'
# end

# block can take parameters eg. |number| will catch the iteration number 
# number will start from 0 up to 9
# 10.times do |number|
#   puts "#{number} situp"
#   puts "#{number} pushup"
#   puts "#{number} chinup"
# end

# will start from 1 up to 10
1.upto(10) do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

# arrays
numbers = [1, 2, 3, 4]

# to_a will convert the range to an array
numbers = (1..10).to_a

# iterate n and select numbers that are > 5
numbers.select { |n| n > 5 }

# if multiple lines 
numbers.select do |n|
  n > 5
end

evens = numbers.select { |n| n.even? }
odds = numbers.select { |n| n.odd? }
# or by rejecting all the even numbers
odds = numbers.reject { |n| n.even? }
# to partition
evens, odds = numbers.partition { |n| n.even? } #returns a nested arraythat ruby will partition : [[2, 4, 6, 8, 10], [1, 3, 5, 7, 9]] in evens and odds
# to reduce : it takes 2 parameters |param1 , param2|
# param1: the accumulator, will take what s inside the block in the last iteration
# param2: the actual iterator
numbers.reduce { |sum, n| sum + n }
# reduce can take a symble of an operator to apply to all the elements of the array
numbers.reduce(:+)
numbers.reduce(:*)

# sort
numbers.sort

numbers.sort.reverse
# or
numbers.sort { |a, b| b <=> a }

# Check if any? even number in the list
numbers.any? { |n| n.even? }
numbers.detect { |n| n.even? }

# Multiply all the numbers in the list by 2
# nmbers will be untouched
numbers_doubled = numbers.map { |number| number * 2 }