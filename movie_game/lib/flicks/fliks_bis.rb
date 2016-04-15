require 'flicks/playlist'

movie1 = Movie.new('goonies',10)
movie2 = Movie.new('up', 5)
movie3 = Movie.new('scarface')

movies = [movie1, movie2, movie3]

# Open file in write mode
File.open('movie_rankings.csv', 'w') do |file|
  movies.sort.each do |movie|
    file.puts "#{movie.title},#{movie.rank}"
  end
end

