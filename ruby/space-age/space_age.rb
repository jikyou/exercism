=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

class SpaceAge
  EARTH_YEARS = {
    'mercury' => 0.2408467,
    'venus' => 0.61519726,
    'mars' => 1.8808158,
    'jupiter' => 11.862615,
    'saturn' => 29.447498,
    'uranus' => 84.016846,
    'neptune' => 164.79132
  }.freeze

  def initialize(age_by_second)
    @age_by_second = age_by_second
  end

  def on_earth
    @age_by_second / 31_557_600.0
  end

  def on_mercury
    on_earth / EARTH_YEARS['mercury']
  end

  def on_venus
    on_earth / EARTH_YEARS['venus']
  end

  def on_mars
    on_earth / EARTH_YEARS['mars']
  end

  def on_jupiter
    on_earth / EARTH_YEARS['jupiter']
  end

  def on_saturn
    on_earth / EARTH_YEARS['saturn']
  end

  def on_uranus
    on_earth / EARTH_YEARS['uranus']
  end

  def on_neptune
    on_earth / EARTH_YEARS['neptune']
  end
end
