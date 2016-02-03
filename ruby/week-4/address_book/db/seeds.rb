# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

contact_list = [
	["jon doe", "123 sesame st", "5555555555", "jon@doe.com"],
	["jane doe", "123 sesame st", "5555555555", "jane@doe.com"],
	["big bird", "123 sesame st", "5555555555", "bigbird@sesame.com"]
]

contact_list.each do |person|
	Contact.create( name: person[0], address: person[1], phone_number: person[2], email: person[3])
end