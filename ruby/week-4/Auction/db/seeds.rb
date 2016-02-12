# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: 'Joffrey', email: 'kingjoff@theredkeep.com')
user2 = User.create(name: 'Jon Snow', email: 'knownothing@castleblack.com')
product1 = Product.create(title: 'crossbow', description: 'its great for scaring people', deadline: Date.new + 1.hour, user_id: 1)