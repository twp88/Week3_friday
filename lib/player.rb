class Player
  DEFAULT_POINTS = 100
  attr_accessor :name, :points
  
  def initialize(name)
    @name = name
    @points = DEFAULT_POINTS
  end

  def receive_hit
    @points -=10
  end
end
