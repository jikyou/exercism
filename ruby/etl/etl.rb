=begin
Write your code for the 'ETL' exercise in this file. Make the tests in
`etl_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/etl` directory.
=end

class ETL
  def self.transform(old)
    new_scrabble_system = {}
    old.each do |key, value|
      value.map(&:downcase).each { |e| new_scrabble_system[e] = key }
    end
    new_scrabble_system
  end
end
