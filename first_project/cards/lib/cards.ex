defmodule Cards do
  
  def create_deck do
    ["Ace", "Two", "Three"] # creating a list
  end

  def shuffle(deck) do
    Enum.shuffle(deck) # shuffle a list
  end

end
