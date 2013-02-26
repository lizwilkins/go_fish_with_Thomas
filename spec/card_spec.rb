require 'rspec'
require 'card'

describe Card do
  context '#initialize' do
    it 'takes the card name as an argument' do
      card = Card.new('ace')
      card.should be_an_instance_of Card
    end
  end

  context '#rank' do
    it 'takes a string as an argument :rank' do
      card = Card.new('ace')
      card.should be_an_instance_of Card
      card.rank.should eq 'ace'
    end
  end
end