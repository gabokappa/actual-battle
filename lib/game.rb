class Game
  attr_reader :player1, :player2, :opponent, :attacker
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @opponent = @player2
    @attacker = @player1
    @players = [@player1, @player2]
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

def self.instance
  @game
end
  
  def attack(victim)
    victim.reduce_health
  end

  def switch_turn
    @opponent == @player2 ? @opponent = @player1 : @opponent = @player2
    @attacker == @player1 ? @attacker = @player2 : @attacker = @player1
  end

  def loser?
    loser = @players.select {|player| player.hp <= 0}
    loser.empty? ? nil : loser[0]
  end
end
