class Dice
  
  attr_reader :roll_results
  attr_reader :roll_result
  attr_reader :dice_range

  def initialize(number_of_sides=6)
    @roll_results = []
    @dice_range = (1..number_of_sides).to_a
  end

  def roll
    @roll_result = @dice_range.sample
    @roll_results.push(roll_result)
    return roll_result
  end
end
