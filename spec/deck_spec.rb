require 'rspec'
require 'player'
require 'deck'
require 'card'

describe Deck do
  context '#initialize' do
    it 'initializes with 0 arguments' do
      deck = Deck.new
      deck.should be_an_instance_of Deck
    end
  end

  context '#display_cards' do
    it 'initializes with 0 arguments' do
      deck = Deck.new
      deck.cards.should eq ["20", "19", "18", "17", "16", "15", "14", "13", "12", "11", "10", "9", "8", "7", "6", "5", "4", "3", "2", "1"]
    end
  end

  context '#deal' do
    it 'deals seven cards to each player' do
      deck = Deck.new
      players = [Player.new('diane'), Player.new('tom')]
      deck.deal(players)
      players[0].hand.should eq ["1", "3", "5", "7",  "9", "11", "13"]
      players[1].hand.should eq ["2", "4", "6", "8", "10", "12", "14"]
      deck.cards.should eq ["20", "19", "18", "17", "16", "15"]
    end

    it 'deals seven cards to each player' do
      deck = Deck.new
      players = [double, double]

      players.each {|player| player.should_receive(:add_card).exactly(7).times}
      deck.deal(players)
    end

    it 'removes the cards from the deck as it deals' do
      deck = Deck.new
      original_length = deck.cards.length

      deck.deal([Player.new('player1'), Player.new('player2')])
      p deck.cards
      deck.cards.length should eq original_length - 14
    end
  end
  
  context '#draw' do
    it 'deals seven cards to each player' do
      deck = Deck.new
      player = Player.new('diane')
      deck.draw(player)
      deck.cards.should eq ["20", "19", "18", "17", "16", "15", "14", "13", "12", "11", "10", "9", "8", "7", "6", "5", "4", "3", "2"]
      player.hand.should eq ["1"]
    end
  end

  context '#shuffle' do
    it 'randomizes the order of the cards in the deck' do
      deck = Deck.new
      Array.any_instance.should_receive(:shuffle!)
      deck.shuffle
    end
  end
end