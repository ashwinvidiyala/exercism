class Pangram
  def self.pangram? phrase
    letters_array = ('a'..'z').to_a
    phrase_array = phrase.downcase.split('')
    (letters_array.uniq - phrase_array.uniq).empty?
  end
end

module BookKeeping
  VERSION = 6
end
