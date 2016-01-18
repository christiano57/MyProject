class Game
	def initialize(x, y)
		@x = x
		@y = y
	end
# create move method to ask game if move is possible
# find way to incorporate can_move? method from other classes into Game class
# check lectures
	def move(piece, dst_x, dst_y)
		if piece.can_move?(dst_x, dst_y) && x_on_board?(dst_x) && y_on_board?(dst_y)
			true
		else
			false
		end
	end
	def x_on_board?(x)
		(x >= @x[0]) && (x <= @x[7])
	end

	def y_on_board?(y)
		(y >= @y[0]) && (y <= @y[7])
	end
end

	# def piece_position
		
	# 	if can_move? == true

	# 	end
	# end