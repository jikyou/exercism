=begin
Write your code for the 'Protein Translation' exercise in this file. Make the tests in
`protein_translation_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/protein-translation` directory.
=end

class InvalidCodonError < ::StandardError
end

class Translation

    CODON_PROTEIN = {
        "AUG" => "Methionine",
        "UUU" => "Phenylalanine",
        "UUC" => "Phenylalanine",
        "UUA" => "Leucine",
        "UUG" => "Leucine",
        "UCU" => "Serine",
        "UCC" => "Serine",
        "UCA" => "Serine",
        "UCG" => "Serine",
        "UAU" => "Tyrosine",
        "UAC" => "Tyrosine",
        "UGU" => "Cysteine",
        "UGC" => "Cysteine",
        "UGG" => "Tryptophan",
        "UAA" => "STOP",
        "UAG" => "STOP",
        "UGA" => "STOP",
    }

    def self.of_rna(strand)
        return [] if strand.length.zero?

        result = []
        (0...strand.length).step(3).each do |i|
            codon = strand[i, 3]

            raise InvalidCodonError if codon.length != 3
            raise InvalidCodonError if !CODON_PROTEIN[codon]
            return result if CODON_PROTEIN[codon] == "STOP"

            result.push(CODON_PROTEIN[codon])
        end
        result
    end
end
