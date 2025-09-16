defmodule Mappings do

  def map([], _), do: []
  def map([head|tail], func), do: [func.(head)|map(tail, func)]  

  def reduce([], acc, _), do: acc
  def reduce([head|tail], acc, fun), do: reduce(tail, fun.(head, acc), fun)

  def mapsum(list), do: mapsum(list, 0)
  def mapsum([], acc), do: acc
  def mapsum([head|tail], acc), do: mapsum(tail, acc + head)

  def mapmax([]), do: 0
  def mapmax(list), do: mapmax(list, 0)
  def mapmax([], acc), do: acc
  def mapmax([head|tail], acc) do 
    if(head > acc) do
      mapmax(tail, head)
    else
      mapmax(tail, acc)
    end
  end

  def caesar([], _, _), do: []
  def caesar(list, offset, z) do
    if mapsum(shift(list, offset)) > z do
      mapsum(shift(list, offset))
    else
      shift(list, offset)
    end
  end

  def shift([last|[]], n), do: [last+n]
  def shift([head|tail], offset), do: [head+offset | shift(tail, offset)]  

end
