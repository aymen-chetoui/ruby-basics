require_relative 'movie'
require_relative 'waldorf_and_statler'

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
  def play
    number_rolled = roll_die
    puts "#{@name}'s playlist:"
    puts @movies
    
    @movies.each do |movie|
    #   if number_rolled < 3
    #     movie.thumbs_down
    #     puts "#{movie.title} got a thumbs down."
    #   elsif number_rolled < 5
    #     puts "#{movie.title} was skipped."
    #   else
    #     movie.thumbs_up
    #     puts "#{movie.title} got a thumbs up!"
    #   end
    #   case
    #   when number_rolled < 3
    #     movie.thumbs_down
    #     puts "#{movie.title} got a thumbs down."
    #   when number_rolled < 5
    #     puts "#{movie.title} was skipped."
    #   else
    #     movie.thumbs_up
    #     puts "#{movie.title} got a thumbs up!"
    #   end
    #   case number_rolled
    #   when 1..2
    #     movie.thumbs_down
    #     puts "#{movie.title} got a thumbs down."
    #   when 3..4
    #     puts "#{movie.title} was skipped."
    #   else
    #     movie.thumbs_up
    #     puts "#{movie.title} got a thumbs up!"
    #   end
      WaldorAndStatler.review(movie)
      puts movie
    end  
  end
end