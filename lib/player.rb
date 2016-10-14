class Player
  DEFAULT_POINTS = 20
  attr_accessor :name, :points

  def initialize(name)
    @name = name
    @points = DEFAULT_POINTS
  end

  def receive_hit
    @points -=10
    dead
  end

private
  def dead
    @points == 0
    #p "#{player} has run out of life. You lose."
end

end
