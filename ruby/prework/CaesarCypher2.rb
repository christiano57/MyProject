def solve_cipher(input, n)
  order = input.split(//)

numbers = []

cypher = []

final = []

order.each do |x| 
	numbers.push(x.ord)
end

numbers.each do |x|
	if x == 32
	cypher.push(x)
	elsif x + n < 97
	cypher.push(x + (26 + n))
	else 
	cypher.push(x + n)
end
end

cypher.each do |x|
	final.push(x.chr)
end

puts final.join

end

solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)
