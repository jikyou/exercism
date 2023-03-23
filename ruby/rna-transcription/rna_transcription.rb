=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement
  DNA = 'CATG'.freeze
  RNA = 'GUAC'.freeze

  def self.of_dna(strand)
    strand.tr(DNA, RNA)
  end
end
