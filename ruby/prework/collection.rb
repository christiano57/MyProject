class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Ricardo's place", "Miami", 6, 65),
  Home.new("Alia's place", "Orlando", 5, 51),
  Home.new("Matt's place", "Washington, DC", 2, 59),
  Home.new("Julian's place", "Miami", 2, 62),
  Home.new("Ana's place", "New York", 4, 80)
]


# homes.each { |hm|
#   puts "#{hm.name} in #{hm.city}\nPrice: #{hm.price} a night"
# }

sort_by_price = homes.sort_by{ |t| t.price}

p sort_by_price

# puts sort_by_price.each { |hm|
#   puts "#{hm.name} in #{hm.city}\nPrice: #{hm.price} a night"
# }

# sort_price_question = "Would you like to sort these by price?(Y/N)"
# puts sort_price_question
# answer1 == gets.chomp
# if answer1 == "Y" 
# 	puts homes_by_price
# else puts "Would you like to sort by city?"
# end






# prices =  homes.map do |hm|
#             hm.price
#           end
# total_price = prices.reduce(0.0, :+)

# def average_price(average, n)
# 	average / n
# end

# puts average_price(total_price, homes.length)

# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end




# Desired results
# Nizar's place in San Juan
# Price: $42 a night

# Fernando's place in Seville
# Price: $47 a night

# Josh's place in Pittsburgh
# Price: $41 a night

# Gonzalo's place in Málaga
# Price: $45 a night

# Ariel's place in San Juan
# Price: $49 a night