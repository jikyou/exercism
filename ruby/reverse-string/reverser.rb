=begin
Write your code for the 'Reverse String' exercise in this file. Make the tests in
`reverse_string_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/reverse-string` directory.
=end

class Reverser
    def self.reverse(s)
        cs = s.chars
        len = cs.length
        (len/2).times do |i|
            cs[i], cs[len-1-i] = cs[len-1-i], cs[i]
        end
        cs.join
    end
end
