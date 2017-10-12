require 'player'

describe Player do
  subject(:bob) {Player.new("Bob", 20)}

  describe '#name' do
    it 'returns its own name' do
      expect(bob.name).to eq("Bob")
    end
  end

  describe '#lose_points' do
    it 'decucts 10 points' do
      expect {bob.lose_points}.to change {bob.life}.by(-10)
    end
  end
end
