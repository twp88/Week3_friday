class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def attack(player)
    player.receive_hit
  end

  def loser(player)
    player.points == 0
  end


  def switch_player
    @players.reverse!
  end
end
