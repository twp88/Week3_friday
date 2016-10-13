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
      expect{player1.attack(player2)}.to change {player2.points}.by (-10)
    end
  end
end
