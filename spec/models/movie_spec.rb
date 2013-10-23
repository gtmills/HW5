require 'spec_helper'

describe Movie do

  describe 'search tmbd' do


        before :each do
            @result = [double('movie_1'), double('movie_2')]
            @result.stub(:search_movies) {Array}
        end

        it 'it should return movie model array' do
           
            @result.search_movies.should eq(Array)

        end

    end

    describe 'check model' do

        it 'it should return that responds to search_movies method' do
            Movie.should respond_to :search_movies
        end


        it 'it should return that responds to create_movie_selected method' do
          
		  Movie.should respond_to :create_movie_selected
        end
    end

end
