class Movie < ActiveRecord::Base
	def self.all_ratings
  		 %w(G PG PG-13 R)
  	end  

	def self.search_movies(movie)         
	
		Tmdb::Api.key('f4702b08c0ac6ea5b51425788bb26562')          
		moviesmatching = Tmdb::Movie.find("#{movie}")   
		moviesreturn = Array.new    
	
		if !moviesmatching.empty?      
			moviesmatching.each do |movie|        
				moviehash = {:tmdb_id => movie.id, :title => movie.title, :rating => self.all_ratings[1], :release_date => movie.release_date}     
				moviesreturn.push(moviehash)      
			end    
		end   
 	return moviesreturn  
	end  
	
	def self.create_movie_selected(tmdbs)   
 		tmdbs.each_key do |id|     
 			movie = Tmdb::Movie.detail("#{id}")      
			Movie.create!(:title => movie.title, :rating => self.all_ratings[1], :release_date => movie.release_date, :description => movie.overview)   
		end 
 	end

end 
