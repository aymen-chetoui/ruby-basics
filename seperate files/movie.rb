class Movie
  attr_reader :rank
  attr_accessor :title

  def initialize(title, rank = 0)
    @title = title.capitalize
    @rank = rank
    @snack_carbs = Hash.new(0)
  end
  
  # We dont have an object here to apply from csv to, so we apply it on self ie. the class itself
  def  self.from_csv(line)
    title, rank = line.split(',')
    # Integer(rank) instead of rank.to_i in order to raise an exception if the rank could not be parsed to int, using to_i will return 0 
    Movie.new(title, Integer(rank))
  end
  
  def ate_snack(snack)
    @snack_carbs[snack.name] += snack.carbs
    puts "#{@title} led to #{snack.carbs} #{snack.name} carbs being consumed."
    puts "#{@title}'s snacks: #{@snack_carbs}"
  end
  
  def carbs_consumed
    @snack_carbs.values.reduce(0, :+)
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
    "#{@title} has a rank of #{@rank} (#{status})"
  end
  
  def to_csv
    "#{@title},#{@rank}"
  end
  
  def normalized_rank_message
    "#{@title} has a normalizer rank of #{normalized_rank}"
  end
  
  def hit?
    @rank >= 10
  end
  
  def each_snack
    @snack_carbs.each do |name, carbs|
      snack = Snack.new(name, carbs)
      yield snack
    end
  end
  
  def status
    # if hit?
    #   'Hit'
    # else
    #   'Flop'
    # end  
    hit? ? 'Hit' : 'Flop'
  end
  def <=>(other_movie)
    other_movie.rank <=> @rank
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