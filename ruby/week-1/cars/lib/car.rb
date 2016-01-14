class Car
	attr_accessor :color, :make, :noise, :language

	def initialize(color, make, noise, language)
		@color = color
		@make = make
		@noise = noise
		@language = language
	end

	def rev
		puts "#{@noise} is Vroom in #{@language}"
	end
end

