#!/usr/bin/env ruby

class Problem001
    def self.run
        matches = (1..999).select { |i| (i % 3 == 0) or (i % 5 == 0) }
        matches.inject(0) { |sum, i| sum + i }
    end
end

p Problem001.run
