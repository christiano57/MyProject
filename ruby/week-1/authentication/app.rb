require_relative("lib/user.rb")


christian = User.new("christian", "abc123")

user_input = ""

puts "Username:"

user_input = gets.chomp

puts "Password:"

user_input = gets.chomp

if user_input == christian.user_name && user_input == christian.password
	puts "welcome!"
end

# puts "Password:"
# password = gets.chomp



# puts "Welcome back #{username}!"

# puts "Please enter some text to count words."
# text = gets.chomp

# puts "----"

# puts "the entered text has #{} words"