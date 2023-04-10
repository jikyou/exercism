=begin
Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
`nucleotide_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nucleotide-count` directory.
=end

class Nucleotide
  SEQS = %w[A C G T].freeze

  def initialize(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    raise ArgumentError unless dna.chars.all? { |c| SEQS.include?(c) }

    Nucleotide.new(dna)
  end

  def count(seq)
    @dna.chars.filter { |c| c == seq }.count
  end

  def histogram
    SEQS.each_with_object({}) { |seq, acc| acc[seq] = count(seq) }
  end
end
