require_relative("lib/car.rb")
require_relative("lib/flying_car.rb")
require_relative("lib/invisible_car.rb")


faye_the_fit = Car.new("grey", "Honda", "vruum vruum", "Portuguese")

bella_the_cooper = Car.new("red", "Mini", "Rum Rumm", "Catalan")

matts_mazda = Car.new("red", "Mazda", "Zooom Zooom", "Mazda commercial")

faye_the_fit.rev

bella_the_cooper.rev

matts_mazda.rev

my_flying_car = FlyingCar.new("blue", "Tesla", "Swoosh", "English")
my_flying_car.rev
my_flying_car.fly

my_invisible_car = InvisibleCar.new("camo", "Ford", "Shhhh", "English")
my_invisible_car.rev
