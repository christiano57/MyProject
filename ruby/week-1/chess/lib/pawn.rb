class Pawn
	attr_accessor :pos_x, :pos_y, :color
	def initialize(pos_x, pos_y, color)
		@pos_x = pos_x
		@pos_y = pos_y
		@color = color
	end

	def can_move?(dst_x, dst_y)
		dx = (dst_x - @pos_x).abs
		dy = (dst_y - @pos_y).abs

# => check for movement exceptions before giving boolean on regular move
		if horizontal_move?(dst_x) || backwards_move?(dst_y)
			false
		elsif first_move? && dy <= 2
			true
		elsif dy == 1
			true
		else
			false
		end

	end
	def horizontal_move?(x)
		if x != @pos_x
			true
		end
	end	
	def backwards_move?(y)
		if ((@color == "white") && (y <= @pos_y)) || 
			((@color == "black") && (y >= @pos_y))
			true
		end
	end
	def first_move?
		if ((@color == "white") && (@pos_y == 2)) || 
			((@color == "black") && (@pos_y == 6)) 
			true
		end
	end
end
