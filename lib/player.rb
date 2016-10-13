class Player
  DEFAULT_POINTS = 100
  attr_accessor :name, :points
  def initialize(name, points = DEFAULT_POINTS)
    @name = name
    @points = DEFAULT_POINTS
  end

  def attack(player)
    player.receive_hit
  end
    def receive_hit
      @points -=10
    end
end
