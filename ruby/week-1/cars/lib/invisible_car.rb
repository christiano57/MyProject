class InvisibleCar < Car
	def rev
		puts "Cloaking activated #{@color}, #{@make}"
		
		super
	end
end