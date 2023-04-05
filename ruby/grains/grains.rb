=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains
  BOARD_SIZE = 64

  class << self
    def square(num)
      raise ArgumentError if num <= 0 || num > BOARD_SIZE

      2**(num - 1)
    end

    def total
      2**BOARD_SIZE - 1
    end
  end
end
