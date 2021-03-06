# require_relative 'playlist'
# we no longer use require_relative but require, because ruby knows where to find bin and spec drectories

require 'flicks/playlist'

# run 'rspec' in the root directory without '.' because ruby knows where to find the spec files

module Flicks
    describe Playlist do

    before do
        @playlist = Playlist.new('Kermit')
    end

    context 'being played with one movie' do
        before do
        @initial_rank = 10
        @movie = Movie.new('goonies', @initial_rank)
        @playlist.add_movie(@movie)
        end
    
        it 'gives the movie a thumbs up if a high number is rolled' do
        #@playlist.stub(:roll_die).and_return(5) # if the roll_die method is called always return 5
        WaldorAndStatler.stub(:roll_die).and_return(5)
        
        @playlist.play(1)
        @movie.rank.should == @initial_rank + 1
        end
    
        it 'skips the movie if a medium number is rolled' do
        #@playlist.stub(:roll_die).and_return(3)
        WaldorAndStatler.stub(:roll_die).and_return(3)
        
        @playlist.play(1)
        @movie.rank.should == @initial_rank 
        end

        it 'gives the movie a thumbs down if a low number is rolled' do
        #@playlist.stub(:roll_die).and_return(1)
        WaldorAndStatler.stub(:roll_die).and_return(1)
        
        @playlist.play(1)
        @movie.rank.should == @initial_rank - 1
        end   
    end
    end
end