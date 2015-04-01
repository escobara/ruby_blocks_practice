class Genres
	attr_reader :names 

	def initialize
		@names = ["Action", "Comedy", "Sci-Fi", "Adventure", "Documentary"]
	end

	def each
		names.each { |name| yield name }
	end
end


Movies = Struct.new(:title, :rating, :duration) do 

	def watch 
		puts "Watching #{title} - #{rating} (#{duration} mins)"
	end
end

genres = Genres.new

# genres.each {|name| puts name }

movies = [] 
movie1 =  Movies.new("Indiana Jones", "PG", 204)
movie2 =  Movies.new("Indiana Jones I", "PG", 95)
movie3 =  Movies.new("Indiana Jones II", "PG", 128)
movie4 =  Movies.new("Indiana Jones III", "NR", 343)
movie5 =  Movies.new("Indiana", "R", 120)

module MyEnumerable
	def my_select
		new_array = []
		each do |value|
			new_array << value if yield(value)
		end	
		new_array
	end

	def my_map
		new_array = []
		each do |value|
			new_array << yield(value) 
		end	
		new_array
	end
end

class MovieQueue
	include MyEnumerable
	attr_reader :movies 

	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end

	def each
		@movies.each {|movie| yield movie }
	end

	def each_pg_movie
		@movies.select { |m| m.rating == "PG"}.each {|m| yield m }
	end

	def each_by_rating(rating)
		@movies.select { |m| m.rating == rating}.each {|m| yield m }
	end
end

queue = MovieQueue.new("Indiana Jones Marathon")
queue.add_movie(movie1)
queue.add_movie(movie2)
queue.add_movie(movie3)
queue.add_movie(movie4)
queue.add_movie(movie5)
# queue.each { |movie| movie.watch }
# queue.each_pg_movie { |m| m.watch }
# queue.each_by_rating("NR") { |m| m.watch }
puts "Long Movies: "
long_movies = queue.my_select {|m| m.duration > 100 }.map { |e| e.watch  }
puts long_movies
puts "Movie Titles: "
new_map = queue.my_map {|m| m.title }
puts new_map



