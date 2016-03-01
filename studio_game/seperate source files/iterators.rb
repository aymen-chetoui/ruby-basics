def conversation
  puts 'Hello'
  yield
  puts 'Goodbye'
end

conversation { puts "Good to meet you!" }

# def five_times
#   yield 1
#   yield 2
#   yield 3
#   yield 4
#   yield 5
# end



# def five_times
#   1.upto(5) do |i|
#     yield i
#   end 
# end

# five_times do |n|
#   puts "#{n} situps"
#   puts "#{n} pushups"
#   puts "#{n} chinups"
# end



def n_times(number)
  1.upto(number) do |i|
    yield i
  end
end

n_times(5) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end