=begin
Write your code for the 'All Your Base' exercise in this file. Make the tests in
`all_your_base_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/all-your-base` directory.
=end
class BaseConverter
  class << self
    def convert(input_base, digits, output_base)
      raise ArgumentError if input_base < 2 || output_base < 2
      raise ArgumentError if digits.any? { |i| i.negative? || i >= input_base }

      @input_base = input_base
      @output_base = output_base

      sum = sum(digits)
      output_digits(sum)
    end

    private

    attr_reader :input_base, :output_base

    def output_digits(sum)
      first = first_pos(sum)
      digits = []
      while first >= 0
        base = output_base**first
        digit = sum / base
        digits << digit

        sum -= digit * base
        first -= 1
      end
      digits
    end

    def first_pos(sum)
      first = 0
      first += 1 while output_base**(first + 1) < sum
      first
    end

    def sum(digits)
      digits
        .reverse
        .each_with_index
        .map { |item, index| input_base**index * item }
        .sum
    end
  end
end
