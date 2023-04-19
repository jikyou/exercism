=begin
Write your code for the 'Binary Search' exercise in this file. Make the tests in
`binary_search_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search` directory.
=end

class BinarySearch
  def initialize(array)
    @array = array
  end

  def search_for(target)
    left = 0
    right = @array.size - 1
    while left <= right
      mid = (left + right) / 2
      return mid if @array[mid] == target

      if @array[mid] < target
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end
end
