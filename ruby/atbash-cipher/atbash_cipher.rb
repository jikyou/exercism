=begin
Write your code for the 'Atbash Cipher' exercise in this file. Make the tests in
`atbash_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/atbash-cipher` directory.
=end

class Atbash

    def self.encode(plaintext)
        split_five(convert(plaintext)).map(&:join).join(" ")
    end

    def self.decode(ciphertext)
        convert(ciphertext).join
    end

    private

    def self.split_five(arr)
        arr.inject([]) do |memo, i|
            if memo[memo.length-1].nil? || memo[memo.length-1].length == 5
                memo.push([])
            end
            memo[memo.length-1].push(i)
            memo
        end
    end

    def self.convert(str)
        str.scan(/\w+/).join.downcase.each_codepoint.map { |code| change(code) }
    end

    def self.change(code)
        return code.chr if code >= 48 && code <= 57
        (122-(code-97)).chr
    end

end
