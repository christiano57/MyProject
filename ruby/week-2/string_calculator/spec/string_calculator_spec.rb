require_relative("../string_calculator/lib/stringcalculator.rb")

RSpec.describe StringCalculator  do
	it "returns 0 for empty string" do
		#p my_calc.add("") == 0
		my_calc = StringCalculator.new
		expect(my_calc.add("")).to eq(0)
	end

	it "returns the number for one nubmer" do 
		my_calc = StringCalculator.new
		#p my_calc.add("9") == 9
		expect(my_calc.add( "9" )).to eq(9)

		my_calc = StringCalculator.new
		#p my_calc.add("5") == 5
		expect(my_calc.add( "5" )).to eq(5)
	end

	it "returns the sum of a string of numbers" do
		my_calc = StringCalculator.new
		#p my.calc.add("9,5,6") == 20
		expect(my_calc.add("9,5,6")).to eq(20)
	end
end