class Binary
  def self.to_decimal binary_input
    output = 0
    power = binary_input.length - 1
    binary_input.chars do |binary|
      raise ArgumentError unless binary == '1' || binary == '0'
      output += binary.to_i * 2**power
      power -= 1
    end
    output
  end
end

class BookKeeping
  VERSION = 3
end
