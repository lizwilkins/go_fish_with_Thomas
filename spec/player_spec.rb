 require 'rspec'
 require 'player'
 require 'card'

describe Player do
  context '#initialize' do
    it 'initializes with 1 argument: name' do
      player = Player.new('diane')
      player.should be_an_instance_of Player
    end
  end

  context '#name' do
    it 'shows name' do
      player = Player.new('diane')
      player.name.should eq 'diane'
    end
  end

  context '#hand' do
    it 'shows player hand' do
      player = Player.new('diane')
      player.hand.should eq []
    end
  end

  context '#add_card' do
    it 'adds card to hand' do
      player = Player.new('diane')
      card1 = Card.new("ace")
      player.add_card(card1)
      card2 = Card.new("king")
      player.add_card(card2)
      player.hand.should eq ["ace", "king"]
    end
  end

end
