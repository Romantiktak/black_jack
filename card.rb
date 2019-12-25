class Card
  attr_reader :index

  SUIT = ["\u2664", "\u2665", "\u2666", "\u2667"]
  RANK = ['2', '3', '4', '5', '6', '7', '8', '9' ,'10', 'J', 'Q', 'K', 'A']

  def initialize
    @index ||= []
    SUIT.each do |suit|
      RANK.each { |rank| @index << rank + suit}
    end
  end

  def take_card
    card = @index.sample
    @index.delete(card)
  end

end
