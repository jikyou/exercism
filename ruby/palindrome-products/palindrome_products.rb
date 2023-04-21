=begin
Write your code for the 'Palindrome Products' exercise in this file. Make the tests in
`palindrome_products_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/palindrome-products` directory.
=end

class Palindromes
  def initialize(**factor)
    @max_factor = factor[:max_factor] || 0
    @min_factor = factor[:min_factor] || 0
    raise ArgumentError if @min_factor > @max_factor
  end

  def generate
    list = (@min_factor..@max_factor).to_a.repeated_combination(2).to_a
    @palindromes = list.filter { |a, b| palindrome?(a * b) }.each_with_object({}) do |(a, b), acc|
      key = a * b
      acc[key] = [] if acc[key].nil?
      acc[key] << [a, b]
    end
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

class Palindrome
  attr_reader :value, :factors

  def initialize(value, factors)
    @value = value
    @factors = factors
  end
end
