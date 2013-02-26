class Deck
  def initialize
    @cards = []
    (1..20).to_a.reverse.map {|card_number| @cards << Card.new(card_number.to_s)}
  end

  def cards
    @cards.map {|card| card.rank}
  end

  def shuffle
    p @cards.shuffle!
  end

  def deal(players)
    7.times { players.each {|player| player.add_card(@cards.pop)} }
  end

  def draw(player)
    player.add_card(@cards.pop)
  end
end