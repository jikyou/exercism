=begin
Write your code for the 'Darts' exercise in this file. Make the tests in
`darts_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/darts` directory.
=end

class Darts

    def initialize(x, y)
        @radius = Math.hypot(x, y)
    end

    def score
        case @radius
        when 0..1 then 10
        when 1..5 then 5
        when 5..10 then 1
        else 0
        end
    end

end
