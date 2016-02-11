class Movie
  attr_reader :rank
  attr_accessor :title

  def initialize(title, rank = 0)
    @title = title.capitalize
    @rank = rank
  end
  
  def thumbs_up
    @rank += 1
  end
  
  def thumbs_down
    @rank -= 1
  end

  def normalized_rank
    @rank / 10
  end
  
  def to_s
    "#{@title} has a rank of #{@rank}"
  end
  
  def normalized_rank_message
    "#{@title} has a normalizer rank of #{normalized_rank}"
  end
end


# Example code how to use Movie class
# Will run only by running this file and not inheriting it

if __FILE__ == $0
  movie1 = Movie.new('goonies',10)
  movie2 = Movie.new('up', 5)
  movie3 = Movie.new('scarface')
  
  movies = [movie1, movie2, movie3]
  puts movies
  movies.each do |m|
    m.thumbs_up
    puts m
  end
end