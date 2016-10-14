require 'player'

describe Player do
  subject(:player) {described_class.new}

  describe 'name' do
    it 'asks for and returns a name of a player' do
      player = Player.new("Kanye")
      expect(player.name).to eq("Kanye")
    end
  end

describe 'player points' do
  it 'shows and keeps track of hp points'do
    player = Player.new("Kanye")
    expect(player.points).to eq(Player::DEFAULT_POINTS)
    end
  end

  describe 'attack' do
    it 'damages the opponent' do
      player1 = Player.new("Kanye")
      player2 = Player.new("Kittens")
      expect{player1.receive_hit}.to change {player1.points}.by (-10)
    end
  end

  describe '#lose' do
    it 'Lets a player die' do
      player = Player.new("Kanye")
      player.points = 0
      expect(player.receive_hit).to eq false
end

end

end
