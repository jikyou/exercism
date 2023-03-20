=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays
  TWELVE_PRESENTS = [
    ['first', 'a Partridge in a Pear Tree.'],
    ['second', 'two Turtle Doves, and '],
    ['third', 'three French Hens, '],
    ['fourth', 'four Calling Birds, '],
    ['fifth', 'five Gold Rings, '],
    ['sixth', 'six Geese-a-Laying, '],
    ['seventh', 'seven Swans-a-Swimming, '],
    ['eighth', 'eight Maids-a-Milking, '],
    ['ninth', 'nine Ladies Dancing, '],
    ['tenth', 'ten Lords-a-Leaping, '],
    ['eleventh', 'eleven Pipers Piping, '],
    ['twelfth', 'twelve Drummers Drumming, ']
  ].freeze

  def self.song
    TWELVE_PRESENTS.map.with_index do |d, i|
      present = TWELVE_PRESENTS.slice(0..i).reverse.map(&:last).join
      "On the #{d[0]} day of Christmas my true love gave to me: #{present}\n"
    end.join("\n")
  end
end
