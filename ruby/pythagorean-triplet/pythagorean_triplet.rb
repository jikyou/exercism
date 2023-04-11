=begin
Write your code for the 'Pythagorean Triplet' exercise in this file. Make the tests in
`pythagorean_triplet_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pythagorean-triplet` directory.
=end

class PythagoreanTriplet
  def self.triplets_with_sum(num)
    a_start = num / 3
    (1..a_start).each_with_object([]) do |a, acc|
      b_start = (num - a) / 2
      b_start.downto(a + 1) do |b|
        c = num - (a + b)
        break if a**2 + b**2 < c**2

        acc << [a, b, c] if a**2 + b**2 == c**2
      end
    end
  end
end
