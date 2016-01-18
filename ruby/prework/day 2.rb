class Car
	def initialize(name)
		@name = name
	end
	def say_broom(name)
		puts "Broom"
	end

end

corvette = Car.new

say_broom(corvette)