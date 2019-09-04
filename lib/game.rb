class Game
  attr_reader :player1, :player2, :opponent
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @opponent = @player2
  end

  def attack(victim)
    victim.reduce_health
  end

  def switch_turn
    @opponent == @player2 ? @opponent = @player1 : @opponent = @player2
  end
end
