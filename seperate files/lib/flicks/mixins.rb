module Rankable

  # We cannot create an instance of the module Rankable, so we cannot call this method directly -> S we mixed in the classes below
  def thumbs_up
    puts "#{@title} got a thumbs up!" # notice that it can call @title when it gets mixed in
  end

end

class Movie
  include Rankable
 
  def initialize(title, rank)
    @title = title
    @rank = rank
  end
  
end

class Song

  include Rankable # we mix in the module Rankable
  
  def initialize(title, rank)
    @title = title
    @rank = rank
  end
  
end

movie = Movie.new("Goonies", 10)
movie.thumbs_up 

song = Song.new("Ruby Baby", 10)
song.thumbs_up

# Note :
# in irb 
# load 'mixins.rb'
# Movie.ancestors
# => [Movie, Rankable, Object, Kernel, BasicObject] # Notice Rankable here between Movie and Object
# Song.ancestors
# => [Song, Rankable, Object, Kernel, BasicObject]

