=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end

class Pangram
  ALPHABET = 'a'..'z'

  def self.pangram?(sentence)
    # sentence = sentence.downcase
    # ('a'..'z').all? { |c| sentence.include?(c) }

    # ([*'a'..'z'] - sentence.downcase.chars).empty?

    sentence.downcase.each_char.include_all?(ALPHABET)
  end
end

module Enumerable
  def include_all?(elements)
    elements.all? { |e| include? e }
  end
end
