=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(series)
    @series = series
  end

  def slices(sub_len)
    raise ArgumentError if sub_len <= 0 || sub_len > @series.length

    @series.chars.each_cons(sub_len).map(&:join)
  end
end
