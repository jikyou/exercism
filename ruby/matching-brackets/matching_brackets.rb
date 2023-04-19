=begin
Write your code for the 'Matching Brackets' exercise in this file. Make the tests in
`matching_brackets_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matching-brackets` directory.
=end

class Brackets
  def self.paired?(str)
    stack = []
    pairs = {
      ']' => '[',
      '}' => '{',
      ')' => '('
    }
    str.scan(/[(){}\[\]]/).each do |i|
      next stack << i if pairs.values.include?(i)
      return false if stack.pop != pairs[i]
    end
    stack.empty?
  end
end
