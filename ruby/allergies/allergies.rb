=begin
Write your code for the 'Allergies' exercise in this file. Make the tests in
`allergies_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/allergies` directory.
=end

class Allergies
  ALLERGY_ITEMS = {
    'eggs' => 1,
    'peanuts' => 2,
    'shellfish' => 4,
    'strawberries' => 8,
    'tomatoes' => 16,
    'chocolate' => 32,
    'pollen' => 64,
    'cats' => 128
  }.freeze

  def initialize(score)
    @score = score
  end

  def allergic_to?(allergy)
    ALLERGY_ITEMS[allergy] & @score != 0
  end

  def list
    ALLERGY_ITEMS.keys.filter_map { |i| i if allergic_to?(i) }
  end
end
