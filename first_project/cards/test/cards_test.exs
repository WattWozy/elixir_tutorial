defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  #doc tests are automatically tested by ExUnit
  # examples in the docstrings are run as tests!!

  test "create_deck returns a list of 20 cards" do
    deck = Cards.create_deck()
    assert length(deck) == 20 # aserting for testing
  end

  test "shuffle deck randomizes the deck" do
    deck = Cards.create_deck()
    refute deck == Cards.shuffle(deck) # refute is the opposite of assert (!=)
  end

end
