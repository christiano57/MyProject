class Ingredient < ActiveRecord::Base
	# has_many_through :SandwichIngredient
	# belongs_to :sandwich
	has_many :sandwich_ingredients
	has_many :sandwiches, :through => :sandwich_ingredients
end
