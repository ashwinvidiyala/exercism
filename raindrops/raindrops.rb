class Raindrops
  def self.convert(number, output = '')
    if !output.empty?
      output
    elsif number % 3 == 0 || number % 5 == 0 || number % 7 == 0
      output += 'Pling' if number % 3 == 0
      output += 'Plang' if number % 5 == 0
      output += 'Plong' if number % 7 == 0
      self.convert(number, output)
    else
      output += number.to_s
    end
  end
end

module BookKeeping
  VERSION = 3
end
