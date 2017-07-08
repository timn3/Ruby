for num in (1..100) 
  say = ""
  say << "Fizz" if num % 3 == 0
  say << "Buzz" if num % 5 == 0
  if say == "" then puts num else puts say end 
end