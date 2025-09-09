defmodule Cards do
  
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
    
    cards = for value <- values do
      for suit <- suits do
        "#{value} of #{suit}"
      end
    end

    List.flatten(cards) # flattening a list of nested lists into a single list
  end

  def shuffle(deck) do
    Enum.shuffle(deck) # shuffle a list
  end

  def contains?(deck, card) do  # the question mark is a convention for functions that return boolean values
    Enum.member?(deck, card) # check if a list contains an element
  end

end
