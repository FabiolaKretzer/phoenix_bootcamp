defmodule Cards do
  @moduledoc """
    Providers methods for creating and handling a deck of cards
  """

  @doc """
    Returns a list of strings representing a deck off playing cards
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    deck
    |> Enum.shuffle()
  end

  @doc """
    Determines whether a deck contains a given card.

    ## Examples

        iex> deck = Cards.create_deck()
        iex> Cards.contains?(deck, "Ace of Spades")
        true
  """
  def contains?(deck, card) do
    deck
    |> Enum.member?(card)
  end

  @doc """
    Divides a deck into a hand and the remainder of the deck.
    The `hand_size` argument indicates how many cards should be in the hand.

  ## Examples

      iex> deck = Cards.create_deck()
      iex> {hand, _deck} = Cards.deal(deck, 1)
      iex> hand
      ["Ace of Spades"]
  """
  def deal(desk, hand_size) do
    desk
    |> Enum.split(hand_size)
  end

  def save(deck, filename) do
    binary =
      deck
      |> :erlang.term_to_binary()

    filename
    |> File.write(binary)
  end

  def load(filename) do
    case filename |> File.read() do
      {:ok, binary} ->
        binary
        |> :erlang.binary_to_term()

      {:error, _reason} ->
        "That file does not exist"
    end
  end

  def create_hand(hand_size) do
    Cards.create_deck()
    |> Cards.shuffle()
    |> Cards.deal(hand_size)
  end
end
