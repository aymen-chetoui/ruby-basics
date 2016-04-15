module WaldorAndStatler
#   def self.review #Module method begin with self.
#     puts 'Bravo!'
#   end

  def self.roll_die
    rand(1..6)
  end

  def self.review(movie)
    number_rolled = roll_die
    case number_rolled
    when 1..2
      movie.thumbs_down
      puts "#{movie.title} got a thumbs down."
    when 3..4
      puts "#{movie.title} was skipped."
    else
      movie.thumbs_up
      puts "#{movie.title} got a thumbs up!"
    end
    
  end
  
end

# WaldorAndStatler.new #error because a module doesn't instantiate -> cant't create objects
# WaldorAndStatler.review