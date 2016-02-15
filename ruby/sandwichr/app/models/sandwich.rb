class Sandwich < ActiveRecord::Base
	# has_many_through :SandwichIngredient
	# has_many :ingredients
	has_many :sandwich_ingredients
	has_many :ingredients, :through => :sandwich_ingredients

end
