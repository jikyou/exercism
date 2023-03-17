=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = matrix.split("\n").map { |row| row.split(' ').map(&:to_i) }
    @columns = @rows.reduce([]) do |acc, cur|
      cur.each_with_index do |ele, index|
        acc[index] = [] if acc[index].nil?
        acc[index].push(ele)
      end
      acc
    end
  end
end
