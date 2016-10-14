require 'game'
describe Game do
  subject(:game) {described_class.new("Kanye", "Kittens")}
  # let(:player1) {double "Kanye"}
  # let(:player2) {double "Kittens"}
  game.create = game
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

    describe "switch turn" do
      it "allows players to switch turns" do
        expect{game.switch_player}.to change {game.players[0]}
    end
  end

  describe "loser" do
    it "sees if player is the loser" do
      player1 = Player.new("Kanye")
      expect(game.loser(player1)).to eq false
    end
  end
end
