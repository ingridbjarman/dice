require "dice"

describe 'dice' do
  subject { Dice.new() }
  describe 'initialization' do
    it 'should start with an empty array of roll results' do
      expect(subject.roll_results).to be_empty
    end
  end

  describe 'roll' do
    it 'the array of results should be empty before each turn' do
      expect(subject.roll_results).to be_empty
    end
    it 'when rolled, the roll result is stored in the array of results' do
      subject.roll
      expect(subject.roll_results).to include(subject.roll_result)
    end
    it 'the roll result is an integer within the set dice range' do
      subject.roll
      expect(subject.roll_result).to be_between(1, subject.dice_range.last)
    end
  end
end