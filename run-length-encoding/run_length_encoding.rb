class RunLengthEncoding
  def self.encode input
    output = Hash.new(0)
    letter = input[0]
    final_string = ''
    input.split('').each do |l|
      if letter == l
        output[letter] += 1
      else
        if output[letter] == 1
          final_string += letter
        else
          final_string += "#{output[letter]}#{letter}"
        end
        output[letter] = 0
        letter = l
        output[letter] += 1
      end
    end
    if output[letter] == 1
      final_string += letter
    else
      final_string += "#{output[letter]}#{letter}"
    end
    input == '' ? input : final_string
  end
end

class BookKeeping
  VERSION = 3
end
