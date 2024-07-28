=begin
Write your code for the 'Eliuds Eggs' exercise in this file. Make the tests in
`eliuds_eggs_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/eliuds-eggs` directory.
=end

class EliudsEggs
    def self.egg_count(decimal)
        eggs = 0
        q = decimal
        loop do
            break eggs+=q if q <= 1

            q, r = q.divmod(2)
            eggs+=r
        end
        eggs
    end
end
