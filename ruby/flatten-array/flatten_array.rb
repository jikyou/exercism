=begin
Write your code for the 'Flatten Array' exercise in this file. Make the tests in
`flatten_array_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/flatten-array` directory.
=end

class FlattenArray
  def self.flatten1(list)
    list.flatten.compact
  end

  def self.flatten(list)
    result = []
    unpack(result, list)
    result
  end

  private

  def self.unpack(result, list)
    list.each do |i|
      next result.push(i) if i.is_a?(String)
      next result.push(i) if i.is_a?(Numeric)
      next if !i.is_a?(Array)
      unpack(result, i)
    end
  end

end
