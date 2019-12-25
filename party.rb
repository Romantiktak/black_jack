class Party
  attr_accessor :hand_user, :hand_computer, :deck
  def initialize(players = {})
    @deck = Deck.new
    @hand_user = Hand.new(players[:user])
    @hand_computer = Hand.new(players[:computer])

    2.times do
      @hand_user.cards << @deck.take_card
      @hand_computer.cards << @deck.take_card
    end

    @hand_user.convert_cards_to_point
    @hand_computer.convert_cards_to_point

    # Не смог воспользоваться @hand_user.player.bank.make_bet
    @hand_user.player.bank -= 10
    @hand_computer.player.bank -= 10
  end

end
