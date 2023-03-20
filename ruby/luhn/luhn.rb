=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn1
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

class Luhn2
  def self.valid?(input)
    input
      .gsub(/\s/, '')
      .tap { |s| return false unless s[/\A\d\d+\z/] }
      .chars
      .reverse
      .map.with_index { |d, i| i.odd? ? d.to_i * 2 : d.to_i }
      .map { |d| d > 9 ? d - 9 : d }
      .sum % 10 == 0
  end
end

class Luhn
  class << self
    def valid?(string)
      string = string.delete(' ').reverse
      return false unless string.match?(/\A\d{2,}\z/)

      string
        .each_char
        .with_index
        .sum(&method(:character_to_digit))
        .modulo(10)
        .zero?
    end

    private

    def character_to_digit(character_and_index)
      character, index = character_and_index
      return character.to_i if index.even?

      character = character.to_i * 2
      character - (character > 9 ? 9 : 0)
    end
  end
end
