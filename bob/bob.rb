class Bob
  def Bob.hey remark
    remark.strip!
    case
    when remark == remark.upcase && remark =~ /[A-Z]/
      'Whoa, chill out!'
    when remark[-1] == '?'
      'Sure.'
    when remark == ""
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end

class BookKeeping
  VERSION = 1
end

# Other solutions: http://exercism.io/tracks/ruby/exercises/bob
