=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(num_str)
    num_str = num_str.gsub(' ', '')
    return if num_str.length < 2
    return unless num_str.tr('0-9', '').empty?

    num_str.chars.reverse
           .each_with_index.map do |value, index|
             value = value.to_i
             value += value if index.odd?
             value -= 9 if value > 9
             value
           end.sum.divmod(10).last.zero?
  end
end
