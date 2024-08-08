=begin
Write your code for the 'Darts' exercise in this file. Make the tests in
`darts_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/darts` directory.
=end

class Darts

    def initialize(x, y)
        @x = x.abs
        @y = y.abs
    end

    def score
        return 10 if in_circle?(1)
        return 5 if in_circle?(5)
        return 1 if in_circle?(10)

        0
    end

    private

    def in_circle?(radius)
        r = radius*radius - @x*@x
        (r == 0 && @y == 0) || (r > 0 && @y <= Math.sqrt(r))
    end

end
