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
    @words.each_cons(2)
          .map { |lacked_item, jeopardised_item| "For want of a #{lacked_item} the #{jeopardised_item} lost." }
          .push("And all for the want of a #{@qualifier}.")
          .join("\n")
  end
end
