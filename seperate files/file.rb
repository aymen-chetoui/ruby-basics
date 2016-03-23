# To open a file in Ruby we use File.open('filename') method that returns a file object

# file = File.open('movies.rb')
# # Read file
# file.close

# Someties we forget to close the file, so we can also do
# The block will close the file when we are done 

# File.open('movies.csv') do |file|
#   file.each_line do |line|
#     puts line
#   end
# end

# or simply using readlines method that returns an array

# File.readlines('movies.csv').each do |line|
#   puts line
# end

# line = "Gonies,10"
# fields = line.split(',') # This will return an array
# puts fields
# puts fields[0]
# puts fields[1]
# title, rank = line.split(',')
# puts title
# puts rank

require_relative 'movie'

File.readlines('movies.csv').each do |line|
  title, rank = line.split(',')
  movie = Movie.new(title, rank.to_i)
  puts movie
end