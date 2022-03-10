defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create deck makes 20 cards" do
    assert Enum.count(Cards.create_deck()) == 20
  end

  test "shuffle cards" do
    deck = Cards.create_deck()
    refute Cards.shuffle(deck) == Cards.create_deck()
  end
end
