require_relative 'black_jack'
require_relative 'player'
require_relative 'card'
require_relative 'hand'
require_relative 'deck'
require_relative 'party'

# создаем игру как казино, игроков
game = BlackJack.new
computer = Player.new(type: :bot, name: 'computer')
player = Player.new(type: :user, name: 'roma')
puts "computer = #{computer.bank} player = #{player.bank}"

# создаем партию, она имеет руки и колоду
hand_computer = Hand.new(computer)
hand_player = Hand.new(player)
puts "hands #{hand_computer} and #{hand_player}"
party = Party.new(user: hand_player, computer: hand_computer )
puts "party = #{party}"
puts "cards user = #{party.hand_user.cards} points = #{party.hand_user.total}"
puts "cards computer = #{party.hand_computer.cards} points = #{party.hand_computer.total} "



