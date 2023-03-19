=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  RAINDROPS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

  def self.convert(number)
    conversion = ''

    # conversion << 'Pling' if (number % 3).zero?
    # conversion << 'Plang' if (number % 5).zero?
    # conversion << 'Plong' if (number % 7).zero?

    RAINDROPS.each { |prime, sound| conversion += sound if (number % prime).zero? }

    conversion.empty? ? number.to_s : conversion
  end
end
