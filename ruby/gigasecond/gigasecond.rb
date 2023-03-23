=begin
Write your code for the 'Gigasecond' exercise in this file. Make the tests in
`gigasecond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/gigasecond` directory.
=end

class Gigasecond  
  GIGASECOND = 1_000_000_000
  def self.from(birthdate)
    birthdate + 1_000_000_000
  end
end
