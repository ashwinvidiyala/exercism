module BookKeeping
  VERSION = 2
end

module Roman
  ROMANS = {
    1000 => 'M',
    900  => 'CM',
    500  => 'D',
    400  => 'CD',
    100  => 'C',
    90   => 'XC',
    50   => 'L',
    40   => 'XL',
    10   => 'X',
    9    => 'IX',
    5    => 'V',
    4    => 'IV',
    1    => 'I',
  }
  def to_roman
    roman_number = ''
    arabic = self
    ROMANS.each do |a, r|
      while arabic >= a
        arabic -= a
        roman_number << r
      end
    end
    roman_number
  end
end

class Integer
  include Roman
end
