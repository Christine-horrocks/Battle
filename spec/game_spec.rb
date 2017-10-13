require 'game'

describe Game do
  let(:bob) { double :bob, :name=>"Bob", :life=>20}
  let(:ben) { double :ben, :name=>"Ben", :life=>20}

  subject{ described_class.new(bob, ben)}

  describe '#attack'do
    it "allows players to attack eachother and calls the #lose_points" do
        expect(bob).to receive(:lose_points)
        subject.attack(bob)
    end
  end
end
