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

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size) # split a list into two lists at a given index
  end

  def save(deck, filename) do # basically lets you write any Elixir term to a file
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    {status, binary} = File.read(filename)
    case status do
      :ok -> :erlang.binary_to_term(binary)
      _ -> "That file does not exist"
    end
  end

end
