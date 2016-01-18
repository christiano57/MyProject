class StringCalculator
	def initialize
	end
	def add(str) 	
		arr_to_add = str.split(",").map { |i| i.to_i}
		arr_to_add.inject(0, &:+)
		# arr_to_add.reduce(:+)
	end
end