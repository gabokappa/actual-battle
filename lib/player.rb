class Player
  attr_reader :name, :hp

 def initialize(name)
   @name = name
   @hp = 100
 end

 def reduce_health
   @hp -= 10
  end

  def attack(player)
    player.reduce_health
  end

end
