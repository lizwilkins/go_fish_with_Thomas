require 'rspec'
require 'game'

describe Game do
  context '#initialize' do
    it 'initializes with 0 arguments' do
      game = Game.new
      game.should be_an_instance_of Game
    end
  end

  context '#create_players' do
    it 'creates 3 instances of Player' do
      game = Game.new
      Player.should_receive(:new).exactly(3).times
      game.create_players
    end
  end
end