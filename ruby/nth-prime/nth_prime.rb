=begin
Write your code for the 'Nth Prime' exercise in this file. Make the tests in
`nth_prime_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nth-prime` directory.
=end

class Prime
  def self.nth(num)
    raise ArgumentError if num < 1

    primes = [2]
    (3..).step(2).each do |i|
      break if primes.size == num

      primes << i if prime?(i, primes)
    end

    primes.last
  end

  def self.prime?(num, primes)
    primes.none? do |i|
      return true if i > Math.sqrt(num)

      (num % i).zero?
    end
  end
end
