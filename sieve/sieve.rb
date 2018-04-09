class Sieve
  def initialize limit
    @limit = limit
  end

  def primes all_numbers = [], current_prime = 2
    all_numbers = (2..@limit).to_a if all_numbers = []
    all_numbers.map.with_index do |n, i|
      if n % current_prime == 0 && n != current_prime
        n = 0
      else
        current_prime = all_numbers[i + 1]
        primes all_numbers, current_prime
      end
    end
    all_numbers
  end
end
