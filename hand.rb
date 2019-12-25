class Hand
  attr_accessor :cards, :total, :player, :convert_cards_to_point

  def initialize(player)
    @player = player
    @cards ||= []
    @total ||= 0
  end

  def convert_cards_to_point
    @cards.each do |card|
      rank = card[0].to_i

      if rank.zero?
        convert_rank_to_point(card[0])
      else
        @total += rank
      end
    end
  end

  def convert_rank_to_point(rank)
    if rank == 'A'
      convert_a_to_point
    else
      @total += 10
    end
  end

  def convert_a_to_point
    if @total + 11 > 21
      @total += 1
    else
      @total += 11
    end
  end

end
