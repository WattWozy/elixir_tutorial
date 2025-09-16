
defmodule MyList do

  def len([]), do: 0
  def len([_|t]), do: 1+len(t)

  def square([]), do: []
  def square([head|tail]), do: [head*head| square(tail)]

  def add_1([]), do: []
  def add_1([head|tail]), do: [head+1|add_1(tail)]

end

