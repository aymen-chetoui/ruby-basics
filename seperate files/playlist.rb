require_relative 'movie'
require_relative 'waldorf_and_statler'
require_relative 'snack_bar'


class Playlist
  def initialize(name)
    @name = name
    @movies = []
  end
  
  def add_movie(movie)
    @movies << movie
  end
  def roll_die
    rand(1..6)
  end
  def play(viewings)
    puts "#{@name}'s playlist:"
    # puts @movies
    puts @movies.sort
    
    snacks = SnackBar::SNACK
    puts "\nThere are #{snacks.size} snacks available in the snack bar."
    
    snacks.each do |snack|
      puts "#{snack.name} has #{snack.carbs} carbs."
    end
    
    # viewings.times do |count|
    1.upto(viewings) do |count|
      puts "\nViewing #{count}:"
      @movies.each do |movie|
        WaldorAndStatler.review(movie)
        snack = SnackBar.random
        movie.ate_snack(snack)
        #puts "#{movie.title} led to #{snack.carbs} #{snack.name} carbs being consumed."
        puts movie
      end  
    end
  end
  
  def total_carbs_consumed
    @movies.reduce(0) do |sum, movie|
      sum + movie.carbs_consumed
    end
  end
  
  def print_stats
    # The name of the playlist here
    puts "\n#{@name}'s Stats:"
    
    puts "#{total_carbs_consumed} total carbs consumed"
    @movies.sort.each do |movie|
      puts "\n#{movie.title}'s snack totals:"
      
      movie.each_snack do |snack|
        puts "#{snack.carbs} total #{snack.name} carbs"
      end
      puts "#{movie.carbs_consumed} grand total carbs"
    end
    hits, flops = @movies.partition { |movie| movie.hit? }
    
    puts "\nHits:"
    # puts hits
    puts hits.sort
    puts "\nFlops:"
    # puts flops
    puts flops.sort
  end
end