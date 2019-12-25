class Player
  attr_reader :name_player, :type
  attr_accessor :cards, :bank, :total

  def initialize(options = {})
    @type = options[:type] || :bot
    @name_player = options[:name_player] || 'Diller'
    @bank = options[:bank] || 100
  end

  def make_bet(bet = 10)
    @bank -= bet
  end


end
