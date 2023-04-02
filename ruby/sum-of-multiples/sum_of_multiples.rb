=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples1
  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    @factors.map do |factor|
      if factor.zero?
        (factor...limit).to_a
      else
        (factor...limit).step(factor).to_a
      end
    end.flatten.uniq.sum
  end
end

class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    (1...limit).select { |num| @factors.any? { |factor| (num % factor).zero? } }.sum
  end
end
