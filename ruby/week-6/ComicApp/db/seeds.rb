# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

clark, tony, rick = User.create([
{name: 'Clark Kend', screen_name: 'Superman', email: 'clark@ironhack.com', password: 'ironhack'}
	])
