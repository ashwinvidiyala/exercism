class Grains
  def self.square grain
    grain.between?(1, 64) ? 2**(grain - 1) : (raise ArgumentError)
  end

  def self.total
    (1..64).reduce { |grains, g| grains + square(g) }
  end
end

class BookKeeping
  VERSION = 1
end
