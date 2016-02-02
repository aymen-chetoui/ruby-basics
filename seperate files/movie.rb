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