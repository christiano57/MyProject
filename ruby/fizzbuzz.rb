n = 0

result = []

while n < 100 
	n = n + 1
	if n == 1
		result.push "Bang"
	elsif n % 3 == 0 && n % 10 == 0
	result.push "FizzBang"
	elsif n % 5 == 0 && n % 10 == 0
	result.push "BuzzBang"
  elsif n % 3 == 0 && n % 5 == 0
    result.push "FizzBuzz"
  elsif n % 3 == 0
    result.push "Fizz"
  elsif n % 5 == 0
    result.push "Buzz"

  else
    result.push n
  end
end

puts result