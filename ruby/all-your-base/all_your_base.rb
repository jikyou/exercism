=begin
Write your code for the 'All Your Base' exercise in this file. Make the tests in
`all_your_base_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/all-your-base` directory.
=end
class BaseConverter
  def self.convert(input_base, digits, output_base)
    raise ArgumentError if input_base < 2 || output_base < 2
    raise ArgumentError if valid_digits(input_base, digits)

    sum = digits.reduce(0) { |s, d| s * input_base + d }
    to_digits = []
    while sum.positive?
      sum, rem = sum.divmod(output_base)
      to_digits.unshift(rem)
    end
    to_digits.empty? ? [0] : to_digits
  end

  def self.valid_digits(input_base, digits)
    digits.any? { |i| i.negative? || i >= input_base }
  end
end
