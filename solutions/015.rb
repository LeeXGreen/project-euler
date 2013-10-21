#!/usr/bin/env ruby
#
class Problem015
    def self.fact(i)
        (1..i).reduce(:*) || 1
    end

    def self.run
        x_size = 20
        y_size = 20

        top = fact(x_size + y_size)
        bottom = fact(x_size) * fact(y_size)

        top / bottom
    end
end

p Problem015.run
