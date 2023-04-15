=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end

class Bob
  def self.hey(say)
    say = say.strip
    return "Calm down, I know what I'm doing!" if question(say) && shouting?(say)
    return 'Sure.' if question(say)
    return 'Whoa, chill out!' if shouting?(say)
    return 'Fine. Be that way!' if say.gsub(/\s/, '').empty?

    'Whatever.'
  end

  def self.question(say)
    say.end_with?('?')
  end

  def self.shouting?(say)
    !say.scan(/[a-zA-Z]+/).empty? && say == say.upcase
  end
end
