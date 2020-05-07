equals = fn
  a, b -> a == b
end

fizz_buzz = fn
  0, 0 -> "FizzBuzz"
  0, _ -> "Fizz"
  _, 0 -> "Buzz"
  _,_ -> "No_Fizz_No_Buzz"
end

fizz_buzz.(0, 1) # Fizz
fizz_buzz.(0, 0) # FizzBuzz
fizz_buzz.(1, 0) # Buzz
