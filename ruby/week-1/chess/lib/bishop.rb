class Bishop
	def initialize(pos_x, pos_y, color)
		@pos_x = pos_x
		@pos_y = pos_y
		@color = color
	end

	def can_move?(dst_x, dst_y)
		dx = (dst_x - @pos_x).abs
		dy = (dst_y - @pos_y).abs

		if dx == dy
			true
		else
			false
		end
	end
end