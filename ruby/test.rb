class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]        
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  def price_of_milkshake
  total_price_of_milkshake = @base_price
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
   total_price_of_milkshake
end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class Shake_Shop
  def initialize
    @shakes = [ ]        
  end

  def add_shakes(shake)
    @shakes.push(shake)
  end
  def checkout_milkshake
  	puts @shakes[0].price_of_milkshake
  end
end

#List new ingredients here
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
dragonfruit = Ingredient.new("dragonfruit", 3)
blueberry = Ingredient.new("blueberry", 2)

#Nizar's milkshake order
nizars_milkshake = MilkShake.new
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

#Christian's milkshake order
christians_milkshake = MilkShake.new
christians_milkshake.add_ingredient(banana)
christians_milkshake.add_ingredient(dragonfruit)
christians_milkshake.add_ingredient(blueberry)

#each milkshake price seperately 
puts nizars_milkshake.price_of_milkshake
puts christians_milkshake.price_of_milkshake

#total price of order
total_price = Shake_Shop.new
total_price.add_shakes(nizars_milkshake)
total_price.add_shakes(christians_milkshake)
total_price.checkout_milkshake

