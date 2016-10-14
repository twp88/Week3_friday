class Game
  attr_reader :players, :player1, :player2


  def self.game
    @@game
  end

  def self.game(player1, player2)
    @@game = Game.new(player1, player2)
  end

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
