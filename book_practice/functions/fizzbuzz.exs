
fizzBuzz = fn
    {0, 0, _} -> "FizzBuzz"
    {0, _, _} -> "Fizz"
    {_, 0, _} -> "Buzz"
    {_, _, c} -> c 
  end

#IO.puts(fizzBuzz.({0, 0, "hello"}))
#IO.puts(fizzBuzz.({0, 12, "hello"}))
#IO.puts(fizzBuzz.({12, 0, "hello"}))
#IO.puts(fizzBuzz.({12, 12, "hello"}))


myfunk = fn n ->
  fizzBuzz.({rem(n,3), rem(n,5), n})
end

IO.puts(myfunk.(10))
IO.puts(myfunk.(11))
IO.puts(myfunk.(12))
IO.puts(myfunk.(13))
IO.puts(myfunk.(14))
IO.puts(myfunk.(15))
IO.puts(myfunk.(16))
