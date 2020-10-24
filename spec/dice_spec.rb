require "dice"

describe 'dice' do
  subject { Dice.new() }
  describe 'initialization' do
    it 'has a default dice range of 1-6' do
      expect(subject.dice_range.last).to eq(6)
    end
  end

  describe 'roll' do
    it 'the roll result is an integer within the set dice range' do
      subject.roll
      expect(subject.roll_result).to be_between(1, subject.dice_range.last)
    end
  end

end