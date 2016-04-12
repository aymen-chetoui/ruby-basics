require_relative 'movie'

# Movie3D inherit from Movie
class Movie3D < Movie

  def initialize(title, rank, wow_factor)
    super(title, rank) # so that not override initialize method in the superclasse
    @wow_factor = wow_factor
  end

  # def methor propre to Movie3D class
  def show_effect
    puts "Wow! " * @wow_factor
  end
  
  # Override thumbs_up method of Movie class
  def thumbs_up
    # access to rank : a subclasse has access to its superclass instance variables
    # @rank += (1 * @wow_factor)
    # We can instad call thumbs_up multiple times 
    @wow_factor.times { super }
  end
end

# movie3d = Movie3D.new('glee', 5, 20)
# puts movie3d.title
# puts movie3d.rank

# movie3d.thumbs_up
# puts movie3d.rank
# puts movie3d

# movie3d.show_effect

# Check hiarchy using irb

# load 'movie3d.rb'
# => true
# Movie3D.superclass
# => Movie
# Movie3D.ancestors
# => [Movie3D, Movie, Object, Kernel, BasicObject]

# When calling a method : ruby try to find that method in the Classe, if not in the sperclass, ... and so on