=begin
Write your code for the 'Saddle Points' exercise in this file. Make the tests in
`saddle_points_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/saddle-points` directory.
=end

class Matrix
  attr_reader :rows, :columns

  def initialize(str)
    @rows = str.split("\n").map { |e| e.split.map(&:to_i) }
    @columns = @rows[0].size.times.to_a.map do |i|
      @rows.map { |row| row[i] }
    end
  end

  def saddle_points
    @rows.each_with_index.each_with_object([]) do |(item, y), acc|
      item.each_index do |x|
        acc.push([y, x]) if item[x] == item.max && item.max == @columns[x].min
      end
    end
  end
end
