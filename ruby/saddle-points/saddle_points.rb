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
    @columns = @rows.transpose
  end

  def saddle_points
    rows_maximum = rows.map(&:max)
    column_minimum = @columns.map(&:min)
    rows.each_index.each_with_object([]) do |row, acc|
      columns.each_index do |column|
        acc << [row, column] if rows_maximum[row] == column_minimum[column]
      end
    end
  end
end
