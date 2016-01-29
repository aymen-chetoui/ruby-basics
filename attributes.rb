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
  
#   attr_reader :title

#   def title
#     @title
#   end

#   attr_writer :title

#   def title=(newtitle)
#     @title = newtitle
#   end
  
  def to_s
    "#{@title} has a rank of #{@the_rank}"
  end
  
  def normalized_rank_message
    "#{@title} has a normalizer rank of #{normalized_rank}"
  end
  
  
end

movie1 = Movie.new('goonies',10)
puts movie1.title

movie1.title = 'Goomies 2!'
puts movie1.title
puts movie1.normalized_rank