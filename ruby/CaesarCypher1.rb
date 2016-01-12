def solve_cipher(input)
  order = input.split(//)

numbers = []

cypher = []

final = []

order.each do |x| 
	numbers.push(x.ord)
end

numbers.each do |x|
	cypher.push(x - 1)
end

cypher.each do |x|
	final.push(x.chr)
end

puts final.join

end

solve_cipher("ifmmp")
