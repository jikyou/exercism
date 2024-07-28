=begin
Write your code for the 'Eliuds Eggs' exercise in this file. Make the tests in
`eliuds_eggs_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/eliuds-eggs` directory.
=end

class EliudsEggs
    def self.egg_count(decimal)
        binary = []
        q = decimal
        loop do
            break binary << q if q <= 1

            q, r = q.divmod(2)
            binary.push(r)
        end
        binary.count(1)
    end
end
