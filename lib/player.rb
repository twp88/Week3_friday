class Player
  POINTS = 100
  attr_accessor :name, :points
  def initialize(name)
    @name = name
    @points = POINTS
  end
end
