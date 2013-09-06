#!/usr/bin/env ruby

class Problem002
    def self.extend_until(value)
        while(@fib.last.nil? || @fib.last < value)
            a = @fib[-1] || 0
            b = @fib[-2] || 1

            @fib << a + b
        end
    end

    def self.sum_even_valued_terms_under(value)
        sum = 0
        @fib.each do |val|
            break if val > value
            sum += val if (val % 2 == 0)
        end

        sum
    end

    def self.run
        @fib = []
        value = 4000000
        extend_until(value)
        sum_even_valued_terms_under(value)
    end
end

p Problem002.run
