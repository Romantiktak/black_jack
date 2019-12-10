class Player
  attr_reader :name_player, :type
  attr_accessor :cards, :bank, :total

  def initialize(options = {})
    @type = options[:type] || :bot
    @name_player = options[:name_player] || 'Diller'
    @cards  = options[:cards] || []
    @bank = options[:bank] || 100
    @total = options[:total] || 0
  end

end
