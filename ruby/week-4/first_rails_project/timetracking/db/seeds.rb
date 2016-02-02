# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do |i| 
	Project.create name: 'Recipes', description: 'Track my favorite recipes'
end

10.times do |n| 
	Project.create name: 'Time tracking app'
end

5.times do |i|
	Project.create name: 'Ironhack', description: 'Ironhack is a...'
end