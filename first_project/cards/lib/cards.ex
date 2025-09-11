defmodule Cards do
  @moduledoc """
  Provides methods for creating and handling a deck of cards
  """

  @doc """
  Returns a list of strings representing a deck of playing cards
  """
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

  @doc """
  Dibides a deck into a hand and the remainder of the deck.
  The `hand_size` argument indicates how many cards should be in the hand.

  ## Examples

      iex> {hand, deck} = Cards.deal(Cards.create_deck, 1)
      iex> hand
      ["Ace of Hearts"]
  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size) # split a list into two lists at a given index
  end

  def save(deck, filename) do # basically lets you write any Elixir term to a file
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {_, _} -> "That file does not exist"
    end
  end

  def create_hand(hand_size) do # pipe operator |> takes the result of one function and passes it as the first argument to the next function
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end

end
