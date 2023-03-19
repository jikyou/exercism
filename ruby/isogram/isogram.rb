=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
  def self.isogram?(word)
    # return true if word.empty?

    # word.downcase.scan(/\w/).group_by(&:itself).transform_values.select { |v| v.length >= 2 }.empty?
    word = word.downcase.scan(/\w/)
    word == word.uniq
  end
end
