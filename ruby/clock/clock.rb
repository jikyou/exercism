=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock
  HOURS_PER_DAY = 24
  MINUTES_PER_HOUR = 60
  TIME_FORMAT = '%<hour>02d:%<minute>02d'.freeze

  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = (hour + minute / MINUTES_PER_HOUR) % HOURS_PER_DAY
    @minute = minute % MINUTES_PER_HOUR
  end

  def to_s
    format(TIME_FORMAT, hour:, minute:)
  end

  def -(other)
    hour = self.hour - other.hour
    minute = self.minute - other.minute
    Clock.new(hour:, minute:)
  end

  def +(other)
    hour = self.hour + other.hour
    minute = self.minute + other.minute
    Clock.new(hour:, minute:)
  end

  def ==(other)
    to_s == other.to_s
  end
end
