# 2 classes

# 1st class

# 	rooms

# 		instances = rooms
# 					@room description
# 					@

# 		methods = 	how many exits
# 					description

# user_input = gets.chomp

# class Game
# 	attr_accessor :rooms, :position
# 	def initialize
# 		@rooms = []
# 		@position = 
# 	end

# 	def push_room(name)
# 		@rooms.push(name)
# 	end

# end


# class Room
# 	attr_accessor :message, :exit
# 	def initilize(message, exit)
# 		@message = message
# 		@exit = exit
# 	end
# end


# room = Room.new("You are in a dark room. There is a door to the north.", "N")
# room1 = Room.new("")

# 	@rooms[@position]n




require_relative("lib/room.rb")
require_relative("lib/game.rb")

room = Room.new("There is a light to the north", "N")
room.display_description
room1 = Room.new("There is a mossy door to the east", "E")
room.display_description
room3 = Room.new("There is a ")























