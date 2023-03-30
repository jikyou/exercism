=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(words)
    words.filter { |w| w.downcase != word.downcase && w.downcase.chars.sort == word.downcase.chars.sort }
  end
end
