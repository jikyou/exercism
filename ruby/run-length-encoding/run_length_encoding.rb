=begin
Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
`run_length_encoding_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/run-length-encoding` directory.
=end

class RunLengthEncoding
  def self.encode(input)
    return input if input.empty?

    input = input.chars
    before_char = input[0]
    before_count = 0
    result = ''
    input.each_with_index do |item, index|
      if before_char == item
        before_count += 1
      else
        result += before_count == 1 ? before_char : before_count.to_s + before_char
        before_char = item
        before_count = 1
      end
      if index == input.length - 1
        result += before_count == 1 ? before_char : before_count.to_s + before_char
      end
    end
    result
  end

  def self.decode(input)
    result = ''
    num = nil
    input.chars.each do |i|
      if i.to_i.to_s == i
        num = if num.nil?
                i.to_i
              else
                num * 10 + i.to_i
              end
        next
      end
      result += i * (num || 1)
      num = nil
    end
    result
  end
end
