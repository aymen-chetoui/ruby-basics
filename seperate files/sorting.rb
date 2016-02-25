names = %w(Goonies Ghosbusters Glodfinger Godfather)
# sort the array by alphabetical order
# puts names.sort

# sort by something else, like word length
# puts names.sort_by {|w| w.length}


require_relative 'movie'

movie1 = Movie.new('Goonies',10)
movie2 = Movie.new('Ghosbusters',3)
movie3 = Movie.new('Glodfinger',7)

movies = [movie1, movie2, movie3] 

# sort by rank
# puts movies.sort_by { |movie| movie.rank }
# sort by rank in reverse order
#puts movies.sort_by { |movie| movie.rank }.reverse

# ruby spaceship operartor : general comparison operator
#puts movie1.rank <=> movie2.rank # returns 1
#puts movie2.rank <=> movie1.rank # returns -1

# add method sort to Movie class : because sort is known for ruby to just compare strigs, numbers ...

puts movies.sort