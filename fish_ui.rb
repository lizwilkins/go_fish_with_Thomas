require 'game'
require 'player'
require 'deck'
require 'hand'
require 'card'

puts "Welcome to the Go Fish card game app."
puts "How many players are there in this game?"
number_of_players = gets.chomp.to_i
players = (1..number_of_players).to_a.map  {|player_number| Player.new("Player #{player_number}")}

game = Game.new
full_deck = Deck.new
draw_pool = Deck.new

draw_pool.shuffle!
puts "The deck has been shuffled."
draw_pool.deal(players)
puts "Cards have been dealt to each player."

unless game.over?
  players.each do |player|
    puts "#{player.name}, it is your turn."
  end
end