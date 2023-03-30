=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end

class Anagram
  def initialize(word)
    @source_word = word.downcase
  end

  def match(words)
    words.filter { |word| anagram?(word) }
  end

  private

  def anagram?(word)
    word = word.downcase
    word != @source_word && sorted_chars(word) == sorted_chars(@source_word)
  end

  def sorted_chars(str)
    str.chars.sort
  end
end
