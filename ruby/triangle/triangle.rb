=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    triangle? && sides.uniq.count == 1
  end

  def isosceles?
    triangle? && sides.uniq.count <= 2
  end

  def scalene?
    triangle? && sides.uniq.count == 3
  end

  private

  def triangle?
    !sides.include?(0) && sides.max < sides.min(2).sum
  end
end
