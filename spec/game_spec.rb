require 'game'
describe Game do
  subject(:game) {described_class.new}

  describe 'attack' do
    it 'damages the opponent' do
      player1 = Player.new("Kanye")
      player2 = Player.new("Kittens")

      expect(player1).to receive(:receive_hit)
      game.attack(player1)
    end
  end
end
