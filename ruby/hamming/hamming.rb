=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(strand, other_strand)
    raise ArgumentError if strand.length != other_strand.length

    # strand.chars.each_index.count { |index| strand[index] != other_strand[index] }

    # (0...strand.length).count do |i|
    #   strand[i] != other_strand[i]
    # end

    # strand.length.times.count do |i|
    #   strand[i] != other_strand[i]
    # end

    strands = strand.chars.zip(other_strand.chars)
    strands.count { |pair| pair.first != pair.last }
  end
end
