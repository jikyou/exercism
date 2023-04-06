=begin
Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
`resistor_color_trio_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-trio` directory.
=end

class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def initialize(colors)
    raise ArgumentError if colors.size != 3
    raise ArgumentError unless colors.all? { |e| COLORS.include?(e) }

    @colors = colors
  end

  def label
    v = @colors.map { |e| COLORS.index(e) }

    resistor = (v[0] * 10 + v[1]) * 10**v[2]
    resistor = resistor >= 1000 ? "#{resistor / 1000} kiloohms" : "#{resistor} ohms"

    "Resistor value: #{resistor}"
  end
end
