class Movie
  attr_reader :rank
  attr_accessor :title

  def initialize(title, rank = 0)
    @title = title.capitalize
    @the_rank = rank
  end
  
  def thumbs_up
    @the_rank += 1
  end
  
  def thumbs_down
    @the_rank -= 1
  end

  def normalized_rank
    @the_rank / 10
  end
  
  def to_s
    "#{@title} has a rank of #{@the_rank}"
  end
  
  def normalized_rank_message
    "#{@title} has a normalizer rank of #{normalized_rank}"
  end

end

movie1 = Movie.new('goonies',10)
movie2 = Movie.new('up', 5)
movie3 = Movie.new('scarface')

# movies = [movie1, movie2, movie3]

# puts movies

# built in iterator method for an Array : each method

# movies.each do |m|
#   m.thumbs_up
#   puts m
# end

# Tell dont ask : what should the class do before thinking how

class Playlist
  def initialize(name)
    @name = name
    @movies = []
  end
  
  def add_movie(movie)
    @movies << movie
  end
  
  def play
    puts "#{@name}'s playlist:"
    puts @movies
    
    @movies.each do |movie|
      movie.thumbs_up
      puts movie
    end  
  end
end

playlist1 = Playlist.new('Kermit')
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play

playlist2 = Playlist.new('Fozzie')
playlist2.add_movie(movie3)
movie4 = Movie.new('gremlins', 15)
playlist2.add_movie(movie4)
playlist2.play
