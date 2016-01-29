# class Movie
#   def initialize(title, rank)
#     puts "Created a movie object with title #{title} and #{rank}"
#   end
  
#   def listing
#     "#{title} has a rank f #{rank}"
#   end
# end

# movie1 = Movie.new('goonies',10)
# # puts movie1.object_id
# puts movie1.listing

# movie2 = Movie.new('scarface',5)
# # puts movie2.object_id
  
  
# instance variables @rank, @ title
  
# class Movie
#   def initialize(title, rank = 0)
#     @title = title.capitalize
#     @the_rank = rank
#   end
  
#   def listing
#     "#{@title} has a rank f #{@the_rank}"
#   end
# end

# movie1 = Movie.new('goonies',10)
# puts movie1.listing
# movie2 = Movie.new('scarface',5)
# puts movie2.listing
# movie3 = Movie.new('up')
# puts movie3.listing

# printing a class? to_s

# class Movie
#   def initialize(title, rank = 0)
#     @title = title.capitalize
#     @the_rank = rank
#   end
  
#   def to_s
#     "#{@title} has a rank f #{@the_rank}"
#   end
# end

# movie1 = Movie.new('goonies',10)
# puts movie1
# movie2 = Movie.new('scarface',5)
# puts movie2
# movie3 = Movie.new('up')
# puts movie3

# thumbs up, thumbs down

class Movie
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
  
  def to_s
    "#{@title} has a rank f #{@the_rank}"
  end
end

movie1 = Movie.new('goonies',10)
movie1.thumbs_up
puts movie1
movie2 = Movie.new('scarface',5)
movie2.thumbs_down
puts movie2
movie3 = Movie.new('up')
puts movie3

