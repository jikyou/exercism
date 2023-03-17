=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def self.abbreviate(phrase)
    # phrase.scan(/\b[a-zA-Z]/).join.upcase
    # phrase.scan(/\b\w/).join.upcase
    # phrase.split(/[ -]|[a-z](?=[A-Z])/).map(&:chr).join.upcase
    # phrase.split(/\W/).map(&:chr).join.upcase
    phrase.gsub(/-/, ' ').split(' ').map(&:chr).join.upcase
  end
end
