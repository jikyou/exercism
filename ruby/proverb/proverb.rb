=begin
Write your code for the 'Proverb' exercise in this file. Make the tests in
`proverb_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/proverb` directory.
=end

class Proverb
  def initialize(*words, **opt)
    @words = words
    @qualifier = opt[:qualifier] ? "#{opt[:qualifier]} #{words.first}" : words.first
  end

  def to_s
    @words.each_index.map do |i|
      next "And all for the want of a #{@qualifier}." if i == @words.size - 1

      "For want of a #{@words[i]} the #{@words[i + 1]} was lost."
    end.join("\n")
  end
end
