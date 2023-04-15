=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end

class Bob
  def self.hey(say)
    @say = say.strip
    return "Calm down, I know what I'm doing!" if question? && shouting?
    return 'Sure.' if question?
    return 'Whoa, chill out!' if shouting?
    return 'Fine. Be that way!' if silent?

    'Whatever.'
  end

  def self.silent?
    @say.empty?
  end

  def self.question?
    @say.end_with?('?')
  end

  def self.shouting?
    !@say.scan(/[a-zA-Z]+/).empty? && @say == @say.upcase
  end
end
