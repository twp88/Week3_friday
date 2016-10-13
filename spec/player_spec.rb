require 'player'

describe Player do
  subject(:player) {described_class.new}

  describe 'when called' do
    it 'asks for and returns a name of a player' do
      player = Player.new("Kanye")
      expect(player.name).to eq("Kanye")
    end
  end
end
