arr = Array.new
num = 0
while num < 100
	num += 1
	if num%3 == 0 && num%5 == 0 
		arr.push("FizzBuzz")
	elsif num%3 == 0
		arr.push("Fizz")
	elsif num%5 == 0
		arr.push("Buzz")
	else
		arr.push(num)
	end
end
puts arr