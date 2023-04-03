=begin
Write your code for the 'Armstrong Numbers' exercise in this file. Make the tests in
`armstrong_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/armstrong-numbers` directory.
=end

class ArmstrongNumbers  
  def self.include?(number)
    str = number.to_s
    len = str.size
    number == str.chars.map { |n| n.to_i**len }.reduce(&:+)
  end
end
