require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

get "/" do 
	erb(:form)
end

# post "/searching" do 
# 	@term = params[:search_term]
# 	redirect to "/imdb_test"
# end

get "/imdb_test" do 
		@term = params[:search_term]
		search = Imdb::Search.new(@term)
		# @movie_search = MovieSearch.new(search)
		# @filtered_movies = @movie_search.prepare_array
		# @number_of_results = search.movies.length
		# @number_of_results.shuffle
		@movies_to_check = search.movies[0..25]
		@movies_to_check.shuffle
		@movies_to_check.delete_if do | movie |
			movie.poster == nil
		end
		@winner = @movies_to_check.sample
		@movies_to_check.delete_if do | movie | 
			movie.year == @winner.year
		end
		@list_of_movies = @movies_to_check[0..7]
		@list_of_movies.insert(Random.new.rand(8), @winner)
		erb(:imdb_test)
	end