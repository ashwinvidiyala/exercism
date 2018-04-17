class Phrase
  def initialize phrase
    @phrase = phrase
  end

  def word_count
    count = {}
    @phrase.downcase.split(/[^\w']+/).each do |word|
      word = strip_single_quotes(word)
      count.has_key?(word) ? count[word] += 1 : count[word] = 1
    end
    count
  end

  def strip_single_quotes str
    str[0] == "'" && str[-1] == "'" ? str[1..-2] : str
  end
end

module BookKeeping
  VERSION = 1
end
