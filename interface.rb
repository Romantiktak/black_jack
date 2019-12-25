require_relative 'black_jack'
require_relative 'player'
require_relative 'card'
require_relative 'hand'
require_relative 'deck'
require_relative 'party'

puts 'Welcome to Casino'
game = BlackJack.new
puts 'Input your name'
user_name = gets.chomp
game.create_player(user_name)

puts 'The party in BlackJack starting...'
game.create_party
puts 'Cards of players'
game.hands_players
puts 'Current bank of players'
game.bank_player

#loop do
#end
