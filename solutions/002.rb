#!/usr/bin/env ruby

class Problem002
  def self.run
    fib = [1, 1]
    limit = 4_000_000
    sum = 0
    
    while(fib[-1] < limit)
      new_term = fib[-1] + fib[-2]
      fib << new_term

      # sum only the even terms      
      sum += new_term if new_term % 2 == 0 
    end
    
    sum
  end
end

p Problem002.run

