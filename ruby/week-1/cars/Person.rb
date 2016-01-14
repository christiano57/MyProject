class Person
	attr_accessor :age
	attr_reader :name
	def initialize(name, age)
		@name = name
		@age = age
	end
end

christian = Person.new("Christian", "28")
stefan = Person.new("Stefan", "26")

christian.name

puts christian.name