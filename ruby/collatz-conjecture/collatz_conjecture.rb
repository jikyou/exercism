=begin
Write your code for the 'Collatz Conjecture' exercise in this file. Make the tests in
`collatz_conjecture_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/collatz-conjecture` directory.
=end

class CollatzConjecture
  def self.steps(num)
    raise ArgumentError unless num.positive?

    step = 0
    until num == 1
      num = num.even? ? num / 2 : num * 3 + 1
      step += 1
    end
    step
  end
end
