n = 0

while n < 100 
	n = n + 1
  result = ""
  if n % 3 == 0
    result << "Fizz"
  end
  if n % 5 == 0
    result << "Buzz"
  end
  if result == "FizzBuzz"
    result << "!"
  end
  if n == 1 || n == 100
    result << "Bang"
  end
  if (n - 10) <= 9 && (n - 10) >= 0
     result << "Bang"
   end
  if result != ""
    puts result
  else puts n
  end
end

