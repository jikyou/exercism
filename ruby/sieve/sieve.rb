=begin
Write your code for the 'Sieve' exercise in this file. Make the tests in
`sieve_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sieve` directory.
=end

class Sieve1
  def initialize(limit)
    @limit = limit
  end

  def primes
    nums = (2..@limit).to_a
    i = 0
    until nums[i].nil?
      n = nums[i] * 2
      until n > nums[-1]
        nums.delete(n)
        n += nums[i]
      end
      i += 1
    end
    nums
  end
end

class Sieve
  def initialize(max)
    @max = max
  end

  # https://rosettacode.org/wiki/Sieve_of_Eratosthenes#Ruby
  def primes
    nums = [nil, nil, *(2..@max)]
    (2..Math.sqrt(@max)).each do |i|
      (i**2..@max).step(i) { |m| nums[m] = nil } if nums[i]
    end
    nums.compact
  end
end
