class BlackJack
  attr_accessor :player

  def initialize
    @player = []
  end

  def start
    create_player
  end

  def create_player
    puts 'Введите имя игрока'
    user_name = gets.chomp
    @player << Player.new(name_player: user_name, type: :user)
    puts "Игрок #{@player.name_player} создан"
  end

end
