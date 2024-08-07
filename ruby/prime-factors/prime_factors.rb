=begin
Write your code for the 'Prime Factors' exercise in this file. Make the tests in
`prime_factors_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/prime-factors` directory.
=end

class PrimeFactors

    def self.of(num)
        return [] if num == 1

        res = []
        i = 2
        while num != 1
            next i+=1 if !(num%i).zero?

            res.push(i)
            num = num/i
        end
        res
    end
end