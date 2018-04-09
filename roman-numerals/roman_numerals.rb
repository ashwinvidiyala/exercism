module Roman
  def to_roman
    romans = {
      1    => 'I',
      5    => 'V',
      10   => 'X',
      50   => 'L',
      100  => 'C',
      500  => 'D',
      1000 => 'M'
    }
    return romans[self] if self == 1
  end
end

class Integer
  include Roman
end
