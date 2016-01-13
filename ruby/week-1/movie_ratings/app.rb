class Movie
	attr_reader :title, :rating
	def initialize(title, rating)
		@title = title
		@rating = rating
	end
end

class MovieChart
	attr_reader :movies
	def initialize
		@movies = []
	end

	def add_movie(movie)
		@movies.push(movie)
	end

	def print_movie_chart
		chart = ""
		10.downto(1) do | i | 
	@movies.each do | movie |
		if movie.rating >= i
		  chart += "|#"
	 else chart += "| " 
	 end
	 
	end
	chart += "|\n"
	end
	puts chart
	puts "------------"
	(1..(@movies.length)).each do | i |
		print "|#{i}"
	end
		print "|\n\n"
	@movies.each_with_index do | movie, index |
		puts "#{index + 1}. #{movie.title}"
	end
end
end

godfather = Movie.new("The Godfather", 10)
snakes_on_a_plane = Movie.new("Snakes on a Plane", 2)
casino = Movie.new("Casino", 8)
captain_america = Movie.new("Captain America", 7)
up = Movie.new("Up", 8)

movie_chart = MovieChart.new

movie_chart.add_movie(godfather)
movie_chart.add_movie(snakes_on_a_plane)
movie_chart.add_movie(casino)
movie_chart.add_movie(captain_america)
movie_chart.add_movie(up)


movie_chart.print_movie_chart


# 10.downto(1) do | i | 
# 	movie_chart.movies.each do | movie |
# 		if movies.rating >= i
# 		  chart += "| # "
# 	 else chart += "|   " 
# 	 end
# 	end
# end










