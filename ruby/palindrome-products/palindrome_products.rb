=begin
Write your code for the 'Palindrome Products' exercise in this file. Make the tests in
`palindrome_products_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/palindrome-products` directory.
=end

class Palindromes1
  Palindrome = Struct.new(:value, :factors)

  def initialize(**factors)
    @max_factor = factors.fetch(:max_factor, 0)
    @min_factor = factors.fetch(:min_factor, 0)
    raise ArgumentError if @min_factor > @max_factor
  end

  def generate
    list = (@min_factor..@max_factor).to_a.repeated_combination(2).to_a
    @palindromes = list.filter { |a, b| palindrome?(a * b) }.group_by { |x, y| x * y }
  end

  def largest
    max = palindromes.keys.max
    Palindrome.new(max, palindromes[max])
  end

  def smallest
    max = palindromes.keys.min
    Palindrome.new(max, palindromes[max])
  end

  private

  attr_reader :palindromes

  def palindrome?(num)
    num = num.to_s
    num == num.reverse
  end
end

class Palindromes
  Palindrome = Struct.new(:value, :factors)

  attr_accessor :largest, :smallest

  def initialize(max_factor: 1, min_factor: 1)
    @factors = [*min_factor..max_factor].repeated_combination(2)
  end

  def generate
    @smallest, @largest = @factors
                          .group_by { |arr| arr.reduce(:*) }
                          .select { |x, _| palindrome? x }
                          .minmax
                          .map { |x, y| Palindrome.new(x, y) }
  end

  private

  def palindrome?(x)
    x.to_s.reverse == x.to_s
  end
end
