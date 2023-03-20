=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble1
  LETTER_VALUES = {
    'A' => 1, 'E' => 1, 'I' => 1, 'O' => 1, 'U' => 1, 'L' => 1, 'N' => 1,
    'R' => 1, 'S' => 1, 'T' => 1,
    'D' => 2, 'G' => 2,
    'B' => 3, 'C' => 3, 'M' => 3, 'P' => 3,
    'F' => 4, 'H' => 4, 'V' => 4, 'W' => 4, 'Y' => 4,
    'K' => 5,
    'J' => 8, 'X' => 8,
    'Q' => 10, 'Z' => 10
  }.freeze

  def initialize(word)
    @word = word.upcase
  end

  def score
    @word.chars.reduce(0) { |acc, cur| acc + LETTER_VALUES[cur] }
  end
end

class Scrabble
  LETTER_VALUES = {
    /[AEIOULNRST]/ => 1,
    /[DG]/ => 2,
    /[BCMP]/ => 3,
    /[FHVWY]/ => 4,
    /K/ => 5,
    /[JX]/ => 8,
    /[QZ]/ => 10
  }.freeze

  def initialize(word)
    @word = word.upcase
  end

  def score
    word_score = 0
    LETTER_VALUES.each do |letters, value|
      word_score += @word.scan(letters).count * value
    end
    word_score
  end
end
