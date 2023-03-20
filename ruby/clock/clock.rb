=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock
  attr_reader :hour, :minute

  def initialize(time)
    @hour = time[:hour] || 0
    @minute = time[:minute] || 0

    hours = (@minute.to_f / 60).floor
    @hour += hours
    @minute -= hours * 60

    days = (@hour.to_f / 24).floor
    @hour -= days * 24
  end

  def to_s
    result = ''
    result += @hour < 10 ? "0#{@hour}" : @hour.to_s
    result += ":#{@minute < 10 ? "0#{@minute}" : minute.to_s}"
    result
  end

  def -(other)
    Clock.new(hour: hour - other.hour, minute: minute - other.minute)
  end

  def +(other)
    Clock.new(hour: hour + other.hour, minute: minute + other.minute)
  end

  def ==(other)
    to_s == other.to_s
  end
end
