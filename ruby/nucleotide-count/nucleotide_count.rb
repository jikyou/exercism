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
    raise ArgumentError unless dna_string.count('^ACGT').zero?

    Nucleotide.new(dna)
  end

  def count(seq)
    @dna.count(seq)
  end

  def histogram
    nucleotide_count = {
      'A' => 0,
      'T' => 0,
      'C' => 0,
      'G' => 0
    }
    @dna.chars.each { |nucleotide| nucleotide_count[nucleotide] += 1 }
    nucleotide_count
  end
end
