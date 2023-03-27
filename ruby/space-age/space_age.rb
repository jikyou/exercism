=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

class SpaceAge
  ORBITAL_PERIODS = {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.freeze
  SECONDS_PER_EARTH_YEAR = 60 * 60 * 24 * 365.25

  def initialize(seconds)
    @seconds = seconds
  end

  ORBITAL_PERIODS.each do |planet, orbital_period|
    define_method :"on_#{planet}" do
      @seconds.fdiv(SECONDS_PER_EARTH_YEAR * orbital_period).round(2)
    end
  end
end
