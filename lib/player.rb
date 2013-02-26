class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @hand = []
  end

  def add_card(card)
    @hand << card
  end

  def hand
    @hand.map {|card| card.rank}
  end
end