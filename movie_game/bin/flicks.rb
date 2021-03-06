require_relative '../lib/flicks/playlist'
require_relative '../lib/flicks/movie3d'

# movie1 = Movie.new('goonies',10)
# movie2 = Movie.new('up', 5)
# movie3 = Movie.new('scarface')
# playlist1 = Playlist.new('Kermit')
# playlist1.add_movie(movie1)
# playlist1.add_movie(movie2)
# playlist1.add_movie(movie3)

#playlist = Playlist.new('Kermit')
# Playlist is now inside ot the module Flicks: we refer to it using Flicks::Playlist
playlist = Flicks::Playlist.new('Kermit')


# Read from command line using ARGV # shift method will get the value
# || operator means if shift returns nill, use the second element by argument

# Absolute directory for movies.csv
default_movie_file = 
  File.join(File.dirname(__FILE__), 'movies.csv') # means find movies.csv in the same directory of the current file
playlist.load( ARGV.shift || default_movie_file) # From command line : ruby fliks.rb superheros_movies.csv
# The command-line arguments are accessible in the global array ARGV. Use the shift command to return the first command-line argument (the CSV file name). If there are no command-line arguments, use the || operator to load the default player file.

movie3d = Movie3D.new('glee', 5, 20)
playlist.add_movie(movie3d)

# playlist1.play(3)
# playlist1.print_stats

# puts "How many viewings?"
# # Read from stdin using gets
# # Chomp to take away the line break
# answer = gets.chomp
# puts "Enjoy your #{answer} viewings..."
 
# # we need to parse answer into integer because gets will read a string and play expect an integer
# playlist1.play(answer.to_i)
# playlist1.print_stats

loop do 
  puts "\nHow many viewings? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/ # Regular expression between // in Ruby, here for one or more numbers
    playlist.play(answer.to_i)
  when 'quit', 'exit'
    playlist.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end 
end

playlist.save

# playlist.print_stats

# playlist2 = Playlist.new('Fozzie')
# playlist2.add_movie(movie3)
# movie4 = Movie.new('gremlins', 15)
# playlist2.add_movie(movie4)
# playlist2.play



