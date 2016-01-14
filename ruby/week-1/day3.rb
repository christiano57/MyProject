#example exercise : Build the structure

# example = { 
# 	:appetizers => [
# 		0, 
# 		1, 
# 		{:ingredients => [0, { :name => "bacon"} ] } ]
# }
# p example[:appetizers][2][:ingredients][1][:name]

# hash = {
# 	:wat => [
# 		0,
# 		1,
# 		{
# 			:wut => 
# 			[
# 				0, 
# 				[
# 					[
# 						0, 
# 						1, 
# 						2, 
# 						3, 
# 						4, 
# 						5, 
# 						6, 
# 						7, 
# 						8, 
# 						{
# 							:bbq => "pulled pork"}
# 					]
# 				]
# 			]
# 		}
# 	]
# }

# puts hash[:wat][2][:wut][1][0][9][:bbq]


# # puts arr[0][5][:secret][:unlock][1]




class Helicopter
	attr_accessor :wheels, :sound
	def initialize
		@wheels = 3
		@sound = "tutututu"
	end
end

class Car
	attr_accessor :wheels, :sound
	def initialize
		@wheels = 4
		@sound = "beep"
	end
end

class WheelCounter
	attr_accessor :wheels, :sound
	def initialize
		@vehicles = []
	end
	def add_vehicle(vehicle)
		@vehicles.push(vehicle)
	end
	def count_wheels
		total_wheels = @vehicles.reduce(0) do | wheel, num |
			wheel += num.wheels
		end

		puts "#{total_wheels}"

	end
end

chopper = Helicopter.new
apache = Helicopter.new
tesla = Car.new
chevy = Car.new

list_of_vehicles = WheelCounter.new
list_of_vehicles.add_vehicle(chopper)
list_of_vehicles.add_vehicle(apache)
list_of_vehicles.add_vehicle(tesla)
list_of_vehicles.add_vehicle(chevy)

list_of_vehicles.count_wheels





























