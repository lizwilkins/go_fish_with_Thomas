require 'rspec'
require 'game'
require 'player'
require 'deck'
require 'hand'
require 'card'

describe Hand do
  it 'initializes with 0 arguments' do
    hand = Hand.new
    hand.should be_an_instance_of Hand
  end
end