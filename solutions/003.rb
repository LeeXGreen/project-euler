#!/usr/bin/env ruby

require 'prime'

class Problem003
    def self.run
        num = 600851475143

        # find all primes smaller than sqrt(num)
        last = Math.sqrt(num).floor
        lp = Prime.take_while { |p| p < last }

        # find the largest of these that is a factor
        lp.reverse_each { |p| return p if num % p == 0 }
    end
end

p Problem003.run
