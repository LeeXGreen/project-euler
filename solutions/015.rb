#!/usr/bin/env ruby
#

class Problem015
    # could memoize this for better performance
    def self.fact(i)
        (1..i).reduce(:*) || 1
    end

    # Since we must always move from upper left to lower right,
    # we will always have the same amount of [right, down].
    # Therefore, this is just a combinatorics problem: (right+down) choose (right)
    def self.run
        x_size = 20
        y_size = 20

        top = fact(x_size + y_size)
        bottom = fact(x_size) * fact(y_size)

        top / bottom
    end
end

p Problem015.run
