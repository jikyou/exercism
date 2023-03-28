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
    return false unless istriangle?

    sides[0] == sides[1] && sides[0] == sides[2]
  end

  def isosceles?
    return false unless istriangle?

    sides[0] == sides[1] || sides[0] == sides[2] || sides[1] == sides[2]
  end

  def scalene?
    return false unless istriangle?

    sides[0] != sides[1] && sides[0] != sides[2] && sides[1] != sides[2]
  end

  private

  def istriangle?
    return false if sides.any?(0)
    return false if sides[0] + sides[1] < sides[2]
    return false if sides[0] + sides[2] < sides[1]
    return false if sides[1] + sides[2] < sides[0]

    true
  end
end
