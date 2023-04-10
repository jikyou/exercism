=begin
Write your code for the 'ETL' exercise in this file. Make the tests in
`etl_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/etl` directory.
=end

class ETL1
  def self.transform(old)
    old.each_with_object({}) do |(score, letters), a|
      letters.map(&:downcase).each { |e| a[e] = score }
    end
  end
end

class ETL
  class << self
    def transform(legacy)
      Hash[legacy.flat_map do |score, letters|
        letters.map(&:downcase).product([score])
      end]
    end
  end
end
