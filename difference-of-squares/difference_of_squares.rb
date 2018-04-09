class Squares
  attr_accessor :value

  def initialize(value)
    @value = value
    return self
  end

  def difference
    square_of_sum - sum_of_squares
  end

  def square_of_sum
    ((@value ** 2 + @value)/2) ** 2
  end

  def sum_of_squares
    (@value * (@value + 1) * (@value * 2 + 1))/6
  end
end

module BookKeeping
  VERSION = 4
end
