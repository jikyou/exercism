=begin
Write your code for the 'Change' exercise in this file. Make the tests in
`change_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/change` directory.
=end

class Change

    class ImpossibleCombinationError < ::StandardError
    end

    class NegativeTargetError < ::StandardError
    end

    def self.generate(coins, back_amount)

        return [] if back_amount.zero?
        raise NegativeTargetError if back_amount < 0

        back_coins = []
        find(coins.select { |coin| coin <= back_amount }, back_amount, [], back_coins)
        raise ImpossibleCombinationError if back_coins.empty?

        back_coins
    end

    private

    def self.find(coins, back_amount, sel_coins, back_coins)
        return if back_coins.length > 0 && sel_coins.length >= back_coins.length
        return if sel_coins.sum > back_amount

        if sel_coins.sum == back_amount
            back_coins.replace(sel_coins)
            return
        end

        coins.each_with_index do |e, i|
            sel_coins.push(e)
            find(coins, back_amount, sel_coins, back_coins)
            sel_coins.pop
        end

    end

end
