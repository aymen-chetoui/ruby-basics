# seats = ['kemit', 'fozzie', 'gonzo']
# puts seats
# puts seats[0]
# puts seats[1]
# puts seats[2]
# puts seats[3] # returns nil => absence or an object

# seats = %w(kermit fozzie gonzo) # the same as : seats = ['kemit', 'fozzie', 'gonzo']
# puts seats

# seats = []
# # or
# seats = Array.new
# puts seats

# seats[0] = 'kemit'
# seats[1] = 'fozzie'
# seats[2] = 'gonzo'
# # 3 is empty will be filled with nil
# seats[4] = 'miss piggy' 
# puts seats

# seats = []
# seats.push('kermit')
# seats.push('fozzie')
# # or
# seats << ('gonzo')

# puts seats
# puts seats.size

# # remove the last element
# seats.pop
# puts seats
# seats.pop
# seats.pop
# puts seats.empty?

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

movies = [movie1, movie2, movie3]

puts movies

# built in iterator method for an Array : each method

movies.each do |m|
  m.thumbs_up
  puts m
end