class BlackJack
  attr_accessor :player

  def initialize
    @user
    @computer = Player.new
    @party
  end

  def create_player(user_name)
    @user = Player.new(name_player: user_name, type: :user)
    puts "Игрок #{@user.name_player} создан"
    puts "Против Вас играет #{@computer.name_player}"
    puts "Банк диллера = #{@computer.bank}"
    puts "Ваш банк = #{@user.bank}"
  end

  def create_party
    @party = Party.new(user: @user, computer: @computer)
    puts "party create #{@party}"
  end

  def hands_players
    puts "user cards #{@party.hand_user.cards} total = #{@party.hand_user.total}"
    puts "diller cards #{@party.hand_computer.cards} total =  #{@party.hand_computer.total}"
  end

  def bank_player
    puts "user bank = #{@party.hand_user.player.bank}"
    puts "computer bank = #{@party.hand_computer.player.bank}"
  end


end
