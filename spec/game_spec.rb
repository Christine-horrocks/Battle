require 'game'

describe Game do
  let(:bob) { double :bob, :name=>"Bob", :life=>20}

  describe '#attack'do
    it "allows players to attack eachother and calls the #lose_points" do
        expect(bob).to receive(:lose_points)
        subject.attack(bob)
    end
  end
end
