#movies controller spec

require 'spec_helper'
                
describe MoviesController do

        describe 'search TMDb and add' do      

         describe 'after valid search of movie' do
      before :each do
        @results = [double('movie_1'), double('movie_2')]
        Movie.should_receive(:search_movies).with('The Ring').and_return(@results)
        post :search_tmdb, { :search_terms => 'The Ring' }
      end
      it 'it should assign instance variables @myparams to type String' do
        assigns(:myparams).should be_kind_of(String)
      end
      it 'it should select the Search Results' do
        response.should render_template('search_tmdb')
      end

	 it 'it should return a type Array' do
        @results.should be_kind_of(Array)
      end
     
    end
  end   

    describe 'after invalid search of movie' do
      after :each do
        response.should redirect_to movies_path
      end
      it 'it should perform search on bad terms, but then be redirect to rottonpotatoes home' do
        post :search_tmdb, { :myparams => 'asdf asdf' }
	
      end
	it 'it should perform search on bad terms, but then be redirect to rottonpotatoes home' do
        post :search_tmdb, { :myparams => '*%&#$( 234' }
	
      end
	it 'it should perform search on nil terms, but then be redirect to rottonpotatoes home' do
        post :search_tmdb, { :myparams => '' }
      end
      it 'it should perform search on blank terms, but then be redirect to rottonpotatoes home' do
        post :search_tmdb, { :myparams => ' ' }
      end
      
    end

          

  describe 'adding to rottenPotoes' do
    after :each do
      response.should redirect_to movies_path
    end
    it 'should redirect to rottenPotoes homepage on invalid adds' do
      post :add_tmdb, { :tmdb_movies => {} }
    end
	it 'should redirect to rottenPotoes homepage on nil adds' do
      post :add_tmdb, { :tmdb_movies => {""=> "1"} }
    end
	it 'should redirect to rottenPotoes homepage on blank adds' do
      post :add_tmdb, { :tmdb_movies => {" "=> "1"} }
    end
    it 'should redirect to rottenPotoes homepage on valid adds' do
      post :add_tmdb, { :tmdb_movies => {"2365" => "1"} }
    end
  end

end  
