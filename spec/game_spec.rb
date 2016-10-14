require 'game'
describe Game do
  subject(:game) {described_class.new("Kanye", "Kittens")}
  # let(:player1) {double "Kanye"}
  # let(:player2) {double "Kittens"}

  describe 'attack' do
    it 'damages the opponent' do
      player1 = Player.new("Kanye")
      player2 = Player.new("Kittens")

      expect(player1).to receive(:receive_hit)
      game.attack(player1)
    end
  end

  describe "initialize game" do
    it "creates a game with two players" do
      expect(game.players[0]).to eq "Kanye"
      expect(game.players[1]).to eq "Kittens"
    end
  end
end
