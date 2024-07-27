=begin
Write your code for the 'List Ops' exercise in this file. Make the tests in
`list_ops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/list-ops` directory.
=end

class ListOps

    def self.arrays(a)
        length(a)
    end

    def self.reverser(a)
        reverse(a)
    end

    def self.concatter(*arrs)
        concatenate(*arrs)
    end

    def self.mapper(a, &pred)
        map(a, &pred)
    end

    def self.filterer(a, &pred)
        filter(a, &pred)
    end

    def self.sum_reducer(a)
        foldl(a, 0, &:+)
    end

    def self.factorial_reducer(a)
        foldl(a, 1, &:*)
    end

    private

    def self.append(a1, a2)
        a2.each do |i|
            a1.push(i)
        end
        a1
    end

    def self.concatenate(*arrs)
        return [] if arrs.length == 0
        return arrs[0] if arrs.length == 0

        arrs[1..].each do |a|
            a.each do |i|
                arrs[0].push(i)
            end
        end
        arrs[0]
    end

    def self.filter(a)
        res = []
        a.each do |i|
            if yield(i)
                res.push(i)
            end
        end
        res
    end

    def self.length(a)
        len = 0
        a.each do |_|
            len += 1
        end
        len
    end

    def self.map(a)
        res = []
        a.each do |i|
            res.push(yield(i))
        end
        res
    end

    def self.foldl(a, init)
        total = init
        a.each do |i|
            total = yield(total, i)
        end
        total
    end

    def self.foldr(a, init, &pred)
        foldl(reverse(a), init, &pred)
    end

    def self.reverse(a)
        rev = []
        a.each do |i|
            rev.unshift(i)
        end
        rev
    end

end
